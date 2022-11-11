from django.shortcuts import render
from django.views import View
from django.http import HttpResponse,HttpResponseRedirect

# Create your views here.

class MainPage(View):
    """ 
        klasa zwraca widok index.html głównej strony

        :template:`MAINPAGE/index.html`
    """
    def get(self, request, *args, **kwargs):
        return render(request,'MAINPAGE/index.html')
