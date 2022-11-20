from django.contrib.auth.models import User, Group
from rest_framework import serializers
from SERVICEDESK.models import Tickets
from DICTIONARY.models import TicketsStatus, TicketTypes, TicketsPriority


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ["url", "username", "email", "groups"]


class GroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group
        fields = ["url", "name"]


class TicketTypesSerializer(serializers.ModelSerializer):
    class Meta:
        model = TicketTypes
        fields = "__all__"


class TicketsPrioritySerializer(serializers.ModelSerializer):
    class Meta:
        model = TicketsPriority
        fields = "__all__"


class TicketsSerializer(serializers.ModelSerializer):
    def create(self, validated_data):
        request = self.context.get("request")
        tickets = Tickets(
            short_description=validated_data["short_description"],
            description=validated_data["description"],
            created_user=request.user,
            priority=validated_data["priority"],
            ticket_type=validated_data["ticket_type"],
            status=TicketsStatus.objects.get(pk=1),
        )
        tickets.save()
        return tickets

    class Meta:
        model = Tickets
        fields = ["short_description", "description", "priority", "ticket_type"]
