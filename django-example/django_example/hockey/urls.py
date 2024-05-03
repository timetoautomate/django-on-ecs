from django.urls import path
from hockey.views import index
app_name = "hockey"

urlpatterns = [
    path("stats/", index, name="stats"),
]