# Generated by Django 3.0.3 on 2020-04-20 07:29

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pemesanan', '0011_auto_20200419_1013'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pemesanan',
            name='barang',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='pemesanan.Barang'),
        ),
    ]
