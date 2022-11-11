from django.db import models

# Create your models here.
class TicketTypes(models.Model):
    type = models.CharField(max_length=20,null=True,blank=True)
   
    def __str__(sefl):
        return '%s' % (sefl.type)

    class Meta:
        verbose_name = 'Typ Ticketu'
        verbose_name_plural = 'Typy Ticketów'