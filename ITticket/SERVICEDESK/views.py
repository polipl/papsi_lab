from audioop import reverse
from multiprocessing import context
from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect
from django.views import View
from django.contrib.auth.models import User,Group
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required

from DICTIONARY.models import TicketsStatus
from .models import Tickets, TicketsHistory
from .forms import CreateTicketForm, CreateTicketHistoryForm, EditTicketForm
# Create your views here.

@method_decorator(login_required, name='dispatch')
class ServiceDeskIndex(View):
    """
    Widok index service desk
    
    :template:`SERVICEDESK/index.html`
    """
    def get(self, request, *args, **kwargs):
        return render(request,'SERVICEDESK/index.html')

@method_decorator(login_required, name='dispatch')
class TicketsList(View):
    """
    Widok wyświetla wszystkie tickety

    :template:`SERVICEDESK/tickets_list.html`
    """
    def get(self, request, *args, **kwargs):
        tickets = Tickets.objects.all().order_by('-pk')
        context = { 'tickets': tickets }
        return render(request, 'SERVICEDESK/tickets_list.html', context)

@method_decorator(login_required, name='dispatch')
class TicketsAssignedList(View):
    """
    Widok wyświetla wszystkie tickety przypisane do zalogowanego użytkownika

    :template:`SERVICEDESK/tickets_list.html`
    """
    def get(self, request, *args, **kwargs):
        tickets = Tickets.objects.filter(assigned_user=request.user).order_by('-pk')
        context = { 'tickets': tickets }
        return render(request, 'SERVICEDESK/tickets_list.html', context)


@method_decorator(login_required, name='dispatch')
class TicketDetails(View):
    """
    Widok wyświetla ticket o numere ID

    :template:`SERVICEDESK/ticket_details.html`
    """
    def get(self, request, ticket_id ,*args, **kwargs):
        ticket = get_object_or_404(Tickets,pk=ticket_id)
        ticket_history = TicketsHistory.objects.filter(ticket=ticket_id).order_by('-pk')
        form = CreateTicketHistoryForm()
        context = { 'ticket': ticket,
                    'ticket_history': ticket_history,
                    'form': form }
        return render(request, 'SERVICEDESK/ticket_details.html', context)
    
    def post(self, request, ticket_id, *args, **kwargs):
        ticket = get_object_or_404(Tickets,pk=ticket_id)
        ticket_history = TicketsHistory.objects.filter(ticket=ticket_id).order_by('-pk')
        form = CreateTicketHistoryForm(request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            post.ticket = get_object_or_404(Tickets,pk=ticket_id)
            post.created_user = request.user
            post.save()
            form = CreateTicketHistoryForm()
        context = { 'ticket': ticket,
                    'ticket_history': ticket_history,
                    'form': form }
        #return render(request, 'SERVICEDESK/ticket_details.html', context)
        return redirect('SERVICEDESK:ticket_details',ticket_id)

@method_decorator(login_required, name='dispatch')
class CreateTicket(View):
    """
    Widok - tworzy nowy ticket

    :template:SERVICEDESK/create_ticket.html
    """
    def get(self, request, *args, **kwargs):
        form = CreateTicketForm()
        context = { 'form' : form}
        return render(request, 'SERVICEDESK/create_ticket.html', context)

    def post(self, request, *args, **kwargs):
        form = CreateTicketForm(request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            post.status = TicketsStatus.objects.get(pk=1)
            post.save()
        return redirect('SERVICEDESK:ticket_list')

@method_decorator(login_required, name='dispatch')
class EditTicket(View):
    """
    Widok - Edytuje nowy ticket

    :template:SERVICEDESK/edit_ticket.html
    """
    def get(self, request, ticket_id, *args, **kwargs):
        ticket = get_object_or_404(Tickets,pk=ticket_id)
        form = EditTicketForm(instance=ticket)
        context = { 'form' : form}
        return render(request, 'SERVICEDESK/edit_ticket.html', context)

    def post(self, request, ticket_id, *args, **kwargs):
        ticket = get_object_or_404(Tickets,pk=ticket_id)
        form = EditTicketForm(request.POST, instance=ticket)
        if form.is_valid():
            post = form.save(commit=False)
            post.save()
        return redirect('SERVICEDESK:ticket_details',ticket_id)

