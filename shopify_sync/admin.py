from django.contrib import admin
from shopify_sync.models.__init__ import (Address, CarrierService, Collect,
                                          CustomCollection, Customer, Image,
                                          LineItem, Metafield, Option, Order,
                                          Product, ScriptTag, Shop,
                                          SmartCollection, Variant, Webhook)


class OrderAdmin(admin.ModelAdmin):
    list_display = ('name', 'total_price', 'referring_site',)
    readonly_fields = ('line_items',)


admin.site.register(Address)
admin.site.register(CarrierService)
admin.site.register(Collect)
admin.site.register(CustomCollection)
admin.site.register(Customer)
admin.site.register(Image)
admin.site.register(LineItem)
admin.site.register(Metafield)
admin.site.register(Option)
admin.site.register(Order, OrderAdmin)
admin.site.register(Product)
admin.site.register(ScriptTag)
admin.site.register(Shop)
admin.site.register(SmartCollection)
admin.site.register(Variant)
admin.site.register(Webhook)
