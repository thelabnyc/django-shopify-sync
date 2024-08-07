import logging
import sys

from django.conf import settings
import django

log = logging.getLogger()
log.addHandler(logging.StreamHandler())
log.setLevel(10)


if __name__ == "__main__":
    settings.configure(
        DEBUG=True,
        DATABASES={
            "default": {
                "ENGINE": "django.db.backends.sqlite3",
            }
        },
        INSTALLED_APPS=(
            "django.contrib.auth",
            "django.contrib.contenttypes",
            "shopify_sync",
        ),
        MIDDLEWARE_CLASSES=(),
        ROOT_URLCONF="shopify_sync.tests.urls",
        USE_TZ=True,
        SHOPIFY_APP_API_SECRET="hush",
        LOG=log,
        LOGGING={
            "version": 1,
            "filters": {
                "require_debug_true": {
                    "()": "django.utils.log.RequireDebugTrue",
                }
            },
            "handlers": {
                "console": {
                    "level": "DEBUG",
                    "filters": ["require_debug_true"],
                    "class": "logging.StreamHandler",
                }
            },
            # "loggers": {
            #     "django.db.backends": {
            #         "level": "DEBUG",
            #         "handlers": ["console"],
            #     }
            # },
        },
    )

    django.setup()

    from django.test.runner import DiscoverRunner

    test_runner = DiscoverRunner()
    failures = test_runner.run_tests(["shopify_sync"])
    if failures:
        sys.exit(failures)
