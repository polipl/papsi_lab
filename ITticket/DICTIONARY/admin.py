from django.contrib import admin
from .models import TicketTypes
# Register your models here.

class TicketTypesAdmin(admin.ModelAdmin):
    list_display = [f.name for f in TicketTypes._meta.fields]

admin.site.register(TicketTypes,TicketTypesAdmin)