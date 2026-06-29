from pprint import pformat
from unittest import mock
import json

from django.test import SimpleTestCase
import shopify

from ..encoders import ShopifyDjangoJSONEncoder
from ..models import Product
from . import SyncTestCase
from .recipes import SessionRecipe


class FulfillmentEncodingTestCase(SimpleTestCase):
    """
    Regression tests for ShopifyDjangoJSONEncoder.

    Fulfillment objects were previously serialised with str(obj), which turned
    a populated fulfillment into the useless string "fulfillment(<id>)" and
    dropped tracking_number/tracking_url. They must now be serialised to their
    full attributes dict. Receipt intentionally keeps its str(obj) workaround.
    """

    @classmethod
    def setUpClass(cls):
        super().setUpClass()
        # A site is required before Shopify sub-resources can be instantiated.
        shopify.ShopifyResource.set_site("https://test.myshopify.com/admin/api/2025-10")

    @classmethod
    def tearDownClass(cls):
        shopify.ShopifyResource.clear_session()
        super().tearDownClass()

    def _encode(self, obj):
        return json.loads(json.dumps(obj, cls=ShopifyDjangoJSONEncoder))

    def test_fulfillment_preserves_tracking(self):
        fulfillment = shopify.Fulfillment(
            {
                "id": 6671922397278,
                "tracking_company": "USPS",
                "tracking_number": "9434650205120000276741",
                "tracking_numbers": ["9434650205120000276741"],
                "tracking_url": "https://tools.usps.com/go/TrackConfirmAction",
                "tracking_urls": ["https://tools.usps.com/go/TrackConfirmAction"],
            }
        )

        encoded = self._encode([fulfillment])

        self.assertIsInstance(encoded[0], dict)
        self.assertEqual(encoded[0]["tracking_number"], "9434650205120000276741")
        self.assertEqual(
            encoded[0]["tracking_url"],
            "https://tools.usps.com/go/TrackConfirmAction",
        )
        # Guard against a regression to the str(obj) behaviour.
        self.assertNotIn("fulfillment(", json.dumps(encoded))

    def test_receipt_is_still_stringified(self):
        # Receipt is intentionally left unchanged; it is unrelated to the
        # fulfillment tracking bug and has its own str(obj) workaround.
        self.assertIsInstance(self._encode(shopify.Receipt({})), str)


class JSONEncodingTestCase(SyncTestCase):
    @mock.patch("shopify.resources.Metafield.find")
    def test_json_encoding(self, mock_find):
        # Create a test user.
        session = SessionRecipe.make(id=1)

        # Load JSON from the fixture file.
        fixture_json = self.read_fixture("product_created")

        # Create a product model by synchronising from a JSON fixture.
        fixture_shopify_resource = Product.shopify_resource_from_json(fixture_json)
        fixture_shopify_resource.session = session
        local_instance = Product.objects.sync_one(fixture_shopify_resource)

        # Call the JSON conversion method.
        local_json = local_instance.to_json()

        # Remove the 'image' attribute in the fixture JSON if present, as it's not a 'real' attribute.
        if "image" in fixture_json:
            del fixture_json["image"]

        # remove session from json
        if "session" in fixture_json:
            del fixture_json["session"]

        # Verify the converted version and the JSON fixture are the same.
        string = """Local JSON encoding produces same JSON as fixture.
fixture json
{}
================
Local json
{}
""".format(
            pformat(fixture_json),
            pformat(local_json),
        )
        self.assertEqual(local_json, fixture_json, msg=string)
