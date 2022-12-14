from django.shortcuts import render, redirect
from django.views import View
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from SERVICEDESK.models import Tickets

# Create your views here.


@method_decorator(login_required, name="dispatch")
class MainPage(View):
    """
    klasa zwraca widok index.html głównej strony

    :template:`MAINPAGE/index.html`
    """

    def get(self, request, *args, **kwargs):
        if request.user.groups.filter(name="USERS"):
            return redirect("SERVICEDESK:ticket_created_by_user_list")
        ticket_stats_all = Tickets.objects.all().count()
        ticket_stats_active = (
            Tickets.objects.all().exclude(status__status_name="Zamknięty").count()
        )
        ticket_stats_closed = Tickets.objects.filter(
            status__status_name="Zamknięty"
        ).count()
        ticket_stats_new = Tickets.objects.filter(status__status_name="Nowy").count()

        ticket_stats_all_user = Tickets.objects.filter(
            assigned_user=request.user
        ).count()
        ticket_stats_active_user = (
            Tickets.objects.filter(assigned_user=request.user)
            .exclude(status__status_name="Zamknięty")
            .count()
        )
        ticket_stats_closed_user = (
            Tickets.objects.filter(assigned_user=request.user)
            .filter(status__status_name="Zamknięty")
            .count()
        )
        ticket_stats_new_user = (
            Tickets.objects.filter(assigned_user=request.user)
            .filter(status__status_name="Nowy")
            .count()
        )

        reports = {
            "ticket_stats_active": ticket_stats_active,
            "ticket_stats_closed": ticket_stats_closed,
            "ticket_stats_all": ticket_stats_all,
            "ticket_stats_new": ticket_stats_new,
            "ticket_stats_all_user": ticket_stats_all_user,
            "ticket_stats_active_user": ticket_stats_active_user,
            "ticket_stats_closed_user": ticket_stats_closed_user,
            "ticket_stats_new_user": ticket_stats_new_user,
        }
        context = {"reports": reports}
        return render(request, "MAINPAGE/index.html", context)
