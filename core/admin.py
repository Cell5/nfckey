from django.contrib import admin
from .models import Location, Receiver, SecurityGroup, Employee


class LocationAdmin(admin.ModelAdmin):
    list_display = ('location', 'comment')
    search_fields = ('location', 'comment')


class ReceiverAdmin(admin.ModelAdmin):
    list_display = ('receiver_dev_id', 'receiver_location')
    search_fields = ('receiver_dev_id', 'receiver_location')


# class SecurityGroupAdmin(admin.ModelAdmin):
#     list_display = ('security_group_name',)
#     search_fields = ('security_group_name', 'access_level')
#     filter_horizontal = ('access_level',)


class EmployeeAdmin(admin.ModelAdmin):
    list_display = (
        'login',
        'first_name',
        'last_name',
        'email',
        'phone',
        'is_active',
        # 'security_group',
        'date_joined',
        'nfc_dev_id',
    )
    search_fields = (
        'login',
        'first_name',
        'last_name',
        'email',
        'phone',
        'nfc_dev_id',
    )


admin.site.register(Location, LocationAdmin)
admin.site.register(Receiver, ReceiverAdmin)
admin.site.register(SecurityGroup)
admin.site.register(Employee, EmployeeAdmin)

admin.site.site_header = 'NFC Key Administration'
