from django.urls import path, include
from django.contrib.auth import views as auth_views

from . import views
app_name = 'SERVICEDESK'

urlpatterns = [
    path('',views.ServiceDeskIndex.as_view(),name='servicedesk_index'),
    path('tickets/', views.TicketsList.as_view(),name='ticket_list'),
    path('tickets/create', views.CreateTicket.as_view(),name='ticket_create'),
    path('tickets/details/<int:ticket_id>',views.TicketDetails.as_view(), name='ticket_details'),
    path('tickets/edit/<int:ticket_id>',views.EditTicket.as_view(), name='ticket_edit'),

]