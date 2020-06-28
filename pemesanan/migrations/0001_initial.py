# Generated by Django 3.0.3 on 2020-04-16 06:02

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Barang',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nama_barang', models.CharField(max_length=50)),
                ('harga_barang', models.PositiveIntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Pemesanan',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('size', models.CharField(max_length=50)),
                ('color', models.CharField(max_length=50)),
                ('qty', models.PositiveIntegerField()),
                ('total_bayar', models.PositiveIntegerField(null=True)),
                ('barang', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='pemesanan.Barang')),
            ],
        ),
    ]
