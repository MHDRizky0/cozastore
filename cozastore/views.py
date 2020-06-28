from django.shortcuts import render
from pemesanan.models import *
from pemesanan.forms import PemesananForm

# Create your views here.
def index(request):
	formPemesanan = PemesananForm()
	context = {
    	    'daftar_barang':Barang.objects.all(),
      	  'form':formPemesanan,
  				}

	if request.method == 'POST':
		form = PemesananForm(request.POST)
		form.save()

	return render(request, "index.html",context)