from django.shortcuts import render, redirect
from pemesanan.models import *

# Create your views here.
def index(request, id=0):
	context = {
					'daftar_pemesanan':Pemesanan.objects.all(),
  }

	return render(request, "cart/shoping-cart.html",context)
	
	