from email.headerregistry import Group
from unicodedata import name
from django.shortcuts import render
from django.views import View
from django.http import HttpResponse,HttpResponseRedirect
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User,Group

# Create your views here.


@method_decorator(login_required, name='dispatch')
class MainPage(View):
    """ 
        klasa zwraca widok index.html głównej strony

        :template:`MAINPAGE/index.html`
    """
    def get(self, request, *args, **kwargs):
        userinit = False
        if request.user.groups.filter(name="IT"):
            userinit = True
        context = {'userinit':userinit}
        return render(request,'MAINPAGE/index.html',context)
