from django.apps import AppConfig
from shopify.api_version import ApiVersion, Release
from shopify_sync.handlers import webhook_received_handler
from shopify_webhook.signals import webhook_received


class ShopifySyncConfig(AppConfig):
    """
    Application configuration for the Shopify Sync application.
    """

    name = 'shopify_sync'
    verbose_name = 'Shopify Sync'

    def ready(self):
        """
        The ready() method is called after Django setup.
        """
        # ShopifyAPI package doesn't support versions newer than 2023-04 currently. Version definition is added
        # when app is started.
        ApiVersion.define_version(Release("2024-01"))
        # Connect shopify_webhook's webhook_received signal to our synchronisation handler.
        webhook_received.connect(webhook_received_handler, dispatch_uid='shopify_sync_webhook_received_handler')
