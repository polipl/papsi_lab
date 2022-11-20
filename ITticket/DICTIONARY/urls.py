from django.urls import path

# from django.contrib.auth import views as auth_views

from . import views

app_name = "DICTIONARY"

urlpatterns = [
    path("", views.DictionaryIndex.as_view(), name="dictionary_index"),
]
