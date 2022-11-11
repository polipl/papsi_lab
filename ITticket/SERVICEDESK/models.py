from django.db import models
from django.contrib.auth.models import User, Group
from DICTIONARY.models import TicketsPriority, TicketsStatus, TicketTypes
# Create your models here.
class Tickets(models.Model):
    """
    Model baza ticketów
    """
    short_description = models.CharField(max_length=255,null=True,blank=True)
    description = models.TextField(null=True,blank=True)
    created_user = models.ForeignKey(User,on_delete=models.CASCADE, null=True, blank=True, related_name='created_user')
    assigned_user = models.ForeignKey(User,on_delete=models.CASCADE, null=True, blank=True, related_name='assigned_user')
    create_date = models.DateTimeField(auto_now=True)
    end_date = models.DateTimeField(null=True,blank=True)
    priority = models.ForeignKey(TicketsPriority,on_delete=models.CASCADE,null=True,blank=True)
    status = models.ForeignKey(TicketsStatus,on_delete=models.CASCADE,null=True,blank=True)
    ticket_type = models.ForeignKey(TicketTypes,on_delete=models.CASCADE,null=True,blank=True)

    def __str__(sefl):
        return '%s' % (sefl.short_description)

    class Meta:
        verbose_name = 'Ticket'
        verbose_name_plural = 'Tickety'

class TicketsHistory(models.Model):
    """
    Model baza komentarzy do ticketów
    """
    ticket = models.ForeignKey(Tickets, on_delete=models.CASCADE,null=True,blank=True)
    comment = models.TextField(null=True,blank=True)
    create_date = models.DateTimeField(auto_now=True)
    created_user = models.ForeignKey(User,on_delete=models.CASCADE, null=True, blank=True, related_name='created_user_ticket_history')


    def __str__(sefl):
        return '%s' % (sefl.comment)

    class Meta:
        verbose_name = 'Historia Ticketu'
        verbose_name_plural = 'Historie Ticketów'

