from django.contrib import admin
from django.urls import path, include

from . import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),
    path('cart/', include('cart.urls')),
    path('pemesanan/', include('pemesanan.urls')),
    path('about/', include('about.urls')),
    path('blog/', include('blog.urls')),
    path('contact/', include('contact.urls')),
    path('login/', include('login.urls'))
]
