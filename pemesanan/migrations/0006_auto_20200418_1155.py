# Generated by Django 3.0.3 on 2020-04-18 04:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pemesanan', '0005_auto_20200418_1136'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='barang',
            name='gambar',
        ),
        migrations.RemoveField(
            model_name='barang',
            name='jenis',
        ),
        migrations.AddField(
            model_name='csstags',
            name='gambar',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AddField(
            model_name='csstags',
            name='jenis',
            field=models.CharField(max_length=50, null=True),
        ),
    ]