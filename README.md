# Django Shopify Sync

This is a maintained fork of https://github.com/discolabs/django-shopify-sync

## Installation

1. `pip install django-shopify-sync`
2. Add `'shopify_sync',` to `INSTALLED_APPS`
3. Create a new `shopify_sync.Session` in Django admin or shell, enter your Shopify admin API token and site name.

Where to get these fields:

- **API Token**: In the Shopify admin, this is caleld "API Key Password".
- **Site name**: If your domain is http://my-site.myshopify.com your site name is my-site.

This package supports Python 3.X and Django>=4.2

## How to use

First we will get some of the products from Shopify

```py
from shopify_sync.models import Product, Session
session = Session.objects.first()  # Assuming you have just one that you made previously
products = Product.objects.sync_all(session, query="For bar")
```

`sync_all` passes all kwargs to the `shopify_resource.find` so we can
then sync only the items that shopify returns from that search. Now we have all
of the `products` stored locally. Now to update from Django

```py
product = Product.objects.first()
product.title = "New Bar Foo"
product.save(push=True)
```

The `save` method on the objects also accepts the optional argument `push`
which will push the updated model that is locally to Shopify. Now if a product
was edited on shopify through some means other than this Django app, we will
not have the current updated model. For this we need to sync

```py
changed_product.sync()
```

The `changed_product` will get a local copy of the shopify_resource and then
do a `.reload()` on it so that we make a request to shopify. Then we sync
that back with our database.

## How to publish a new version

Use [commitizen](https://commitizen-tools.github.io/commitizen/commands/bump/) via the [bin/publish.sh](bin/publish.sh) script.

```sh
./bin/publish.sh
```

## Contributing

This project is in maintenance mode. Please do not post feature requests unless you intend to both implement them in a merge request and generally help maintain the project. A great first step would be a merge request to update base packages and ensure we are compatible with new Django versions.
