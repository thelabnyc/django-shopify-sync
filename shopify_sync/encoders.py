from django.core.serializers.json import DjangoJSONEncoder
import shopify


def empty_list():
    return []


class ShopifyDjangoJSONEncoder(DjangoJSONEncoder):
    """As per: https://docs.djangoproject.com/en/1.6/topics/serialization/,
    this is a special encoder that handles lazily evaluated strings."""

    def default(self, obj):
        # Fulfillment was previously stringified here (refs #25721), which threw
        # away the entire fulfillment dict (tracking_number, tracking_url, ...)
        # and turned Order.fulfillments into ["fulfillment(<id>)"] on every
        # API-path sync. It is a ShopifyResource, so the generic branch below
        # now serialises it to its full `.attributes` dict like every other
        # resource. Receipt keeps its str(obj) workaround ("do not choke on
        # Receipt objects") as it is unrelated to fulfillment tracking.
        if isinstance(obj, shopify.Receipt):
            return str(obj)
        if isinstance(obj, shopify.ShopifyResource) and getattr(obj, "attributes"):
            return obj.attributes
        return super().default(obj)
