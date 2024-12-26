from django.contrib import admin
from . import models

# Register your models here.
class PassengerAdmin(admin.ModelAdmin):
    list_display = ('first_name','last_name', 'email','reward_points')
 
admin.site.register(models.Passenger, PassengerAdmin)
