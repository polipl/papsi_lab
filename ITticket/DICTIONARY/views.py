from django.shortcuts import render
from django.views import View
from django.http import HttpResponse
# Create your views here.
class DictionaryIndex(View):
    """
    Widok generujący index page dla modułu słownikowego
     
    """
    def get(self, request, *args, **kwargs):
        return HttpResponse('Dictionary index')
