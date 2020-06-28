from django.urls import path
from . import views

urlpatterns = [
    path('<int:id>/', views.index, name='edit'),
    path('delete/<int:id>/', views.delete, name='hapus'),
]
