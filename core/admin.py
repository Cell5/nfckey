from django.contrib import admin
from core.models import Location, Receiver, SecurityGroup, Employee

admin.site.register(Location)
admin.site.register(Receiver)
admin.site.register(SecurityGroup)
admin.site.register(Employee)

