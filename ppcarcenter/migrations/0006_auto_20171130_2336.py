# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-11-30 16:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ppcarcenter', '0005_auto_20171130_2334'),
    ]

    operations = [
        migrations.AlterField(
            model_name='purchase',
            name='created_at',
            field=models.DateTimeField(auto_now_add=True, verbose_name='สร้างเมื่อ'),
        ),
        migrations.AlterField(
            model_name='sales',
            name='created_at',
            field=models.DateTimeField(auto_now_add=True, verbose_name='สร้างเมื่อ'),
        ),
    ]
