# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2019-08-05 07:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Service', '0002_auto_20190805_1534'),
    ]

    operations = [
        migrations.AlterField(
            model_name='service',
            name='close_date',
            field=models.CharField(blank=True, max_length=32, null=True),
        ),
        migrations.AlterField(
            model_name='service',
            name='pause_date',
            field=models.CharField(blank=True, max_length=32, null=True),
        ),
    ]
