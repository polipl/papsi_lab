from django.contrib import admin
from .models import TicketTypes, TicketsPriority, TicketsStatus

# Register your models here.


class TicketTypesAdmin(admin.ModelAdmin):
    list_display = [f.name for f in TicketTypes._meta.fields]


admin.site.register(TicketTypes, TicketTypesAdmin)


class TicketsPriorityAdmin(admin.ModelAdmin):
    list_display = [f.name for f in TicketsPriority._meta.fields]


admin.site.register(TicketsPriority, TicketsPriorityAdmin)


class TicketsStatusAdmin(admin.ModelAdmin):
    list_display = [f.name for f in TicketsStatus._meta.fields]


admin.site.register(TicketsStatus, TicketsStatusAdmin)
