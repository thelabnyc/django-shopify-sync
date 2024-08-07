from django.urls import path
from shopify_webhook.views import WebhookView

urlpatterns = (path("webhook/", WebhookView.as_view(), name="webhook"),)
