from django.db import models

# Create your models here.
class Barang(models.Model):
	nama_barang = models.CharField(max_length=50)
	harga_barang = models.PositiveIntegerField()
	jenis = models.CharField(max_length=50, null=True) 
	gambar = models.CharField(max_length=50, null=True)

	def __str__(self):
		return self.nama_barang

class Pemesanan(models.Model):
	barang = models.ForeignKey(Barang, on_delete=models.CASCADE)
	size_choices = (("S", "S"),("M", "M"),("L", "L"),("XL", "XL"))
	size = models.CharField(max_length=50, choices=size_choices, default="S")
	color_choices = (("RED", "RED"),("BLUE", "BLUE"),("WHITE", "WHITE"),("GREY", "GREY"))
	color = models.CharField(max_length=50, choices=color_choices, default="RED")
	qty = models.PositiveIntegerField()
	total_bayar = models.PositiveIntegerField(null=True)

	def get_total_harga(self):
		total = self.qty * self.barang.harga_barang
		return total

	def save(self, *args, **kwargs):
		self.total_bayar = self.get_total_harga()
		super(Pemesanan, self).save(*args, kwargs)

	# id_barang = Barang.objects.only('id').get(name=Barang.get_nama_barang).id
	# def save(self, *args, **kwargs):
	# 	self.barang = self.id_barang
	# 	super(Pemesanan, self).save(*args, kwargs)