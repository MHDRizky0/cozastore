# Generated by Django 3.0.3 on 2020-04-20 07:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pemesanan', '0016_auto_20200420_1457'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pemesanan',
            name='barang_key',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='pemesanan.Barang'),
        ),
    ]