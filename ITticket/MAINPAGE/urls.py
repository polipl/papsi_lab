from django.urls import path

# from django.contrib.auth import views as auth_views

from . import views

app_name = "MAINPAGE"

urlpatterns = [
    path("", views.MainPage.as_view(), name="index"),
]
