from django.shortcuts import render
from django.http import HttpResponse
from django.views import View
from .models import Tickets, TicketsHistory
# Create your views here.

class ServiceDeskIndex(View):
    """
    Widok index service desk
    """
    def get(self, request, *args, **kwargs):
        return render(request,'SERVICEDESK/index.html')

class TicketList(View):
    """
    Widok listujący wszystkie tickety
    """
    def get(self, request, *args, **kwargs):
        tickets = Tickets.objects.all()
        context = { 'tickets': tickets }
        return render(request, 'SERVICEDESK/ticket_list.html', context)

class CreateTicket(View):
    """
    Widok - tworzy nowy ticket
    """
    def get(self, request, *args, **kwargs):
        return render(request, 'SERVICEDESK/create_ticket.html')