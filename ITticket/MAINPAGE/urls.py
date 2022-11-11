from django.urls import path, include

from . import views
app_name = 'MAINPAGE'

urlpatterns = [
    path('', views.MainPage.as_view(), name='index'),
    path('accounts/', include('django.contrib.auth.urls')),
]