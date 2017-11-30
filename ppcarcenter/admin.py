from django.contrib import admin

from .models import Car, Maintenance, Contact, Purchase, Sales

# Register your models here.
admin.site.site_header = 'PP'
admin.site.site_title = 'PP'

class CarAdmin(admin.ModelAdmin):
    list_display = ['registration_no', 'model', 'color', 'year', 'value']
    list_filter = ['registration_no']
admin.site.register(Car, CarAdmin)


class MaintenanceAdmin(admin.ModelAdmin):
    list_display = ['car', 'name', 'charges']
    list_filter = ['car__registration_no']
    def car(self, obj):
        return obj.car.registration_no
    #get_car.admin_order_field  = 'registration_no'  #Allows column order sorting
    #car.short_description = 'เลขทะเบียน'  #Renames column head
admin.site.register(Maintenance, MaintenanceAdmin)


class ContactAdmin(admin.ModelAdmin):
    list_display = ['fullname', 'age', 'province', 'telephone_no', 'card_no']
admin.site.register(Contact, ContactAdmin)


class PurchaseAdmin(admin.ModelAdmin):
    list_display = ['seller', 'buyer', 'car', 'price', 'deposit', 'created_at']
    def seller(self, obj):
        return obj.seller.fullname
    def buyer(self, obj):
        return obj.buyer.fullname
    def car(self, obj):
        return obj.car.registration_no
    #seller.short_description = 'ผู้ขาย'
admin.site.register(Purchase, PurchaseAdmin)


class SalesAdmin(admin.ModelAdmin):
    list_display = ['buyer', 'seller', 'car', 'price', 'deposit', 'created_at']
    def seller(self, obj):
        return obj.seller.fullname
    def buyer(self, obj):
        return obj.buyer.fullname
    def car(self, obj):
        return obj.car.registration_no
admin.site.register(Sales, SalesAdmin)
