from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='blog'),
    path('detail/', views.detail, name='blog-detail')
]