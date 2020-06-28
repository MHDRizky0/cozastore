from django.shortcuts import render, redirect
from pemesanan.forms import *
from pemesanan.models import *

def index(request, id=0):
	form = PemesananForm()
	if request.method == 'POST':
		if id == 0:
			form = PemesananForm(request.POST)
		else:
			pemesanan = Pemesanan.objects.get(pk=id)
			form = PemesananForm(request.POST, instance=pemesanan)
		form.save()
		return redirect('/cart')
	else:
		if id == 0:
			form = PemesananForm()
		else:
			pemesanan = Pemesanan.objects.get(pk=id)
			form = PemesananForm(instance=pemesanan)
		return render(request, "pemesanan/form.html", {'form':form})

def delete(request,id):
    pemesanan = Pemesanan.objects.get(pk=id)
    pemesanan.delete()
    return redirect('/cart')