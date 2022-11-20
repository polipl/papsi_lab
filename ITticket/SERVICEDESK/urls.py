from django.urls import path
from . import views

app_name = "SERVICEDESK"

urlpatterns = [
    path("", views.ServiceDeskIndex.as_view(), name="servicedesk_index"),
    path("tickets/", views.TicketsList.as_view(), name="ticket_list"),
    path(
        "tickets_assigned/",
        views.TicketsAssignedList.as_view(),
        name="ticket_assigned_list",
    ),
    path(
        "tickets_user/",
        views.TicketsCreatedByUserList.as_view(),
        name="ticket_created_by_user_list",
    ),
    path("tickets/create", views.CreateTicket.as_view(), name="ticket_create"),
    path(
        "tickets/create_user",
        views.CreateTicketByUser.as_view(),
        name="ticket_create_by_user",
    ),
    path(
        "tickets/details/<int:ticket_id>",
        views.TicketDetails.as_view(),
        name="ticket_details",
    ),
    path(
        "tickets/edit/<int:ticket_id>", views.EditTicket.as_view(), name="ticket_edit"
    ),
    path(
        "tickets/edit_user/<int:ticket_id>",
        views.EditTicketByUser.as_view(),
        name="ticket_edit_by_user",
    ),
]
