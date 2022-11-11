from datetime import datetime
from django.db import models
from django.contrib.auth.models import User,Group
# Create your models here.

class TicketTypes(models.Model):
    """
    Model słownik - definicja typów ticketów
    """
    type_name = models.CharField(max_length=20,null=True,blank=True)
   
    def __str__(sefl):
        return '%s' % (sefl.type_name)

    class Meta:
        verbose_name = 'Typ Ticketu'
        verbose_name_plural = 'Typy Ticketów'

class TicketsPriority(models.Model):
    """
    Model słownik - definicja priorytetów ticketów
    """
    priority_name = models.CharField(max_length=20,null=True,blank=True)
   
    def __str__(sefl):
        return '%s' % (sefl.priority_name)

    class Meta:
        verbose_name = 'Priorytet Ticketu'
        verbose_name_plural = 'Priorytety Ticketów'

class TicketsStatus(models.Model):
    """
    Model słownik - definicja statusów ticketów
    """
    status_name = models.CharField(max_length=40,null=True,blank=True)
   
    def __str__(sefl):
        return '%s' % (sefl.status_name)

    class Meta:
        verbose_name = 'Status Ticketu'
        verbose_name_plural = 'Statusy Ticketów'


