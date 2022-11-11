from django.urls import path, include
from django.contrib.auth import views as auth_views

from . import views
app_name = 'SERVICEDESK'

urlpatterns = [
    path('',views.ServiceDeskIndex.as_view(),name='servicedesk_index'),
    path('tickets/', views.TicketList.as_view(),name='ticket_list'),
    path('tickets/create', views.CreateTicket.as_view(),name='ticket_create'),
    

]