"""ITticket URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from rest_framework import routers
from SERVICEDESK import apiview
from django.conf import settings
from django.conf.urls.static import static

router = routers.DefaultRouter()
router.register(r"users", apiview.UserViewSet)
router.register(r"groups", apiview.GroupViewSet)
router.register(r"ticket_type", apiview.TicketTypesViewSet)
router.register(r"tickets_priority", apiview.TicketsPriorityViewSet)
router.register(r"tickets", apiview.TicketsViewSet)

urlpatterns = (
    [
        path("", include("MAINPAGE.urls")),
        path("dictionary/", include("DICTIONARY.urls", namespace="DICTIONARY")),
        path("servicedesk/", include("SERVICEDESK.urls", namespace="SERVICEDESK")),
        path("admin/doc/", include("django.contrib.admindocs.urls")),
        path("admin/", admin.site.urls),
        path("accounts/", include("django.contrib.auth.urls")),
        path("api/v1/", include(router.urls)),
        path("api-auth/", include("rest_framework.urls", namespace="rest_framework")),
    ]
    + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
)
