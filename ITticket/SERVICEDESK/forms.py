from django import forms
from .models import Tickets, TicketsHistory
from DICTIONARY.models import TicketsPriority, TicketTypes, TicketsStatus
from django.contrib.auth.models import User


class CreateTicketForm(forms.models.ModelForm):
    created_user = forms.ModelChoiceField(
        label="Zgłaszający",
        required=True,
        queryset=User.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Zgłaszający"}
        ),
        empty_label=None,
    )
    short_description = forms.CharField(
        label=False,
        widget=forms.TextInput(
            attrs={"class": "form-control my-1", "placeholder": "Krótki opis problemu"}
        ),
    )
    description = forms.CharField(
        label=False,
        widget=forms.Textarea(
            attrs={"class": "form-control my-1", "placeholder": "Opis problemu"}
        ),
    )
    assigned_user = forms.ModelChoiceField(
        label="Przypisany",
        required=False,
        queryset=User.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Przypisany"}
        ),
    )
    priority = forms.ModelChoiceField(
        label="Priorytet",
        queryset=TicketsPriority.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Priorytet"}
        ),
        empty_label=None,
    )
    ticket_type = forms.ModelChoiceField(
        label="Typ zgłoszenia",
        queryset=TicketTypes.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Typ zgłoszenia"}
        ),
        empty_label=None,
    )

    class Meta:
        model = Tickets
        fields = [
            "created_user",
            "short_description",
            "description",
            "assigned_user",
            "ticket_type",
            "priority",
        ]


class CreateTicketEndUserForm(forms.models.ModelForm):
    short_description = forms.CharField(
        label=False,
        widget=forms.TextInput(
            attrs={"class": "form-control my-1", "placeholder": "Krótki opis problemu"}
        ),
    )
    description = forms.CharField(
        label=False,
        widget=forms.Textarea(
            attrs={"class": "form-control my-1", "placeholder": "Opis problemu"}
        ),
    )
    priority = forms.ModelChoiceField(
        label="Priorytet",
        queryset=TicketsPriority.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Priorytet"}
        ),
        empty_label=None,
    )
    ticket_type = forms.ModelChoiceField(
        label="Typ zgłoszenia",
        queryset=TicketTypes.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Typ zgłoszenia"}
        ),
        empty_label=None,
    )

    class Meta:
        model = Tickets
        fields = ["short_description", "description", "ticket_type", "priority"]


class EditTicketForm(forms.models.ModelForm):
    created_user = forms.ModelChoiceField(
        label="Zgłaszający",
        required=True,
        queryset=User.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Zgłaszający"}
        ),
        empty_label=None,
    )
    short_description = forms.CharField(
        label=False,
        widget=forms.TextInput(
            attrs={"class": "form-control my-1", "placeholder": "Krótki opis problemu"}
        ),
    )
    description = forms.CharField(
        label=False,
        widget=forms.Textarea(
            attrs={"class": "form-control my-1", "placeholder": "Opis problemu"}
        ),
    )
    assigned_user = forms.ModelChoiceField(
        label="Przypisany",
        required=False,
        queryset=User.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Przypisany"}
        ),
    )
    priority = forms.ModelChoiceField(
        label="Priorytet",
        queryset=TicketsPriority.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Priorytet"}
        ),
        empty_label=None,
    )
    ticket_type = forms.ModelChoiceField(
        label="Typ zgłoszenia",
        queryset=TicketTypes.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Typ zgłoszenia"}
        ),
        empty_label=None,
    )
    status = forms.ModelChoiceField(
        label="Status zgłoszenia",
        queryset=TicketsStatus.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Status zgłoszenia"}
        ),
        empty_label=None,
    )

    class Meta:
        model = Tickets
        fields = [
            "created_user",
            "short_description",
            "description",
            "assigned_user",
            "ticket_type",
            "priority",
            "status",
        ]


class EditTicketEndUserForm(forms.models.ModelForm):
    short_description = forms.CharField(
        label=False,
        widget=forms.TextInput(
            attrs={"class": "form-control my-1", "placeholder": "Krótki opis problemu"}
        ),
    )
    description = forms.CharField(
        label=False,
        widget=forms.Textarea(
            attrs={"class": "form-control my-1", "placeholder": "Opis problemu"}
        ),
    )
    priority = forms.ModelChoiceField(
        label="Priorytet",
        queryset=TicketsPriority.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Priorytet"}
        ),
        empty_label=None,
    )
    ticket_type = forms.ModelChoiceField(
        label="Typ zgłoszenia",
        queryset=TicketTypes.objects.all(),
        widget=forms.Select(
            attrs={"class": "form-control my-1", "placeholder": "Typ zgłoszenia"}
        ),
        empty_label=None,
    )

    class Meta:
        model = Tickets
        fields = ["short_description", "description", "ticket_type", "priority"]


class CreateTicketHistoryForm(forms.models.ModelForm):
    comment = forms.CharField(
        label=False,
        widget=forms.TextInput(
            attrs={"class": "form-control my-1", "placeholder": "komentarz"}
        ),
    )

    class Meta:
        model = TicketsHistory
        fields = ["comment"]
