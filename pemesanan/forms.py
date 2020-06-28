from django import forms
from .models import Pemesanan

class PemesananForm(forms.ModelForm):
	class Meta:
		model = Pemesanan
		fields = ('barang','size','color', 'qty',)
		labels = {
            'barang':'',
            'size':'',
            'color':'',
            'qty':'',
        }