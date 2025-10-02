from django.contrib import admin
from django.urls import path, include
from rest_framework import routers
from .views import health

# v1 = routers.DefaultRouter()
# v1.register(r'health/', health)

urlpatterns = [
    path('v1/health/', health.as_view())
]
