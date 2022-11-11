from django.contrib import admin
from .models import Tickets, TicketsHistory
# Register your models here.

class TicketsAdmin(admin.ModelAdmin):
    list_display = [f.name for f in Tickets._meta.fields]

admin.site.register(Tickets,TicketsAdmin)


class TicketsHistoryAdmin(admin.ModelAdmin):
    list_display = [f.name for f in TicketsHistory._meta.fields]

admin.site.register(TicketsHistory,TicketsHistoryAdmin)
