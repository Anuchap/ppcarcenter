from django.contrib import admin

from .models import Car, Maintenance

# Register your models here.
admin.site.site_header = 'PP'
admin.site.site_title = 'PP'

class CarAdmin(admin.ModelAdmin):
    list_display = ['registration_no']
    list_filter = ['registration_no']
admin.site.register(Car, CarAdmin)

class MaintenanceAdmin(admin.ModelAdmin):
    list_display = ['get_car', 'name', 'charges']
    list_filter = ['car__registration_no']
    def get_car(self, obj):
        return obj.car.registration_no
    #get_car.admin_order_field  = 'registration_no'  #Allows column order sorting
    get_car.short_description = 'เลขทะเบียน'  #Renames column head
admin.site.register(Maintenance, MaintenanceAdmin)
