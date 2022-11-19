from django.contrib.auth.models import User, Group
from rest_framework import viewsets
from rest_framework import permissions
from .apiserializers import TicketsSerializer, GroupSerializer, UserSerializer, TicketTypesSerializer, TicketsPrioritySerializer
from SERVICEDESK.models import Tickets,TicketsHistory
from DICTIONARY.models import TicketTypes,TicketsPriority,TicketsStatus

class TicketsViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows tickets to be viewed or edited.
    """
    queryset = Tickets.objects.all()
    serializer_class = TicketsSerializer
    permission_classes = [permissions.IsAuthenticated]
    http_method_names = ['get', 'post', 'head']

class TicketTypesViewSet(viewsets.ReadOnlyModelViewSet):
    """
    API endpoint that allows tickets to be viewed.
    """
    queryset = TicketTypes.objects.all()
    serializer_class = TicketTypesSerializer
    permission_classes = [permissions.IsAuthenticated]
    http_method_names = ['get', 'head']
class TicketsPriorityViewSet(viewsets.ReadOnlyModelViewSet):
    """
    API endpoint that allows tickets to be viewed.
    """
    queryset = TicketsPriority.objects.all()
    serializer_class = TicketsPrioritySerializer
    permission_classes = [permissions.IsAuthenticated]
    http_method_names = ['get', 'head']
class UserViewSet(viewsets.ReadOnlyModelViewSet):
    """
    API endpoint that allows users to be viewed.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAuthenticated]
    http_method_names = ['get', 'head']
class GroupViewSet(viewsets.ReadOnlyModelViewSet):
    """
    API endpoint that allows groups to be viewed.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    permission_classes = [permissions.IsAuthenticated]
    http_method_names = ['get', 'head']
