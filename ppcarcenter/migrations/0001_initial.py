# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-11-29 15:35
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Car',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('registration_no', models.CharField(max_length=10, verbose_name='เลขทะเบียน')),
                ('model', models.CharField(blank=True, max_length=20, verbose_name='รุ่น')),
                ('value', models.IntegerField(blank=True, default=0, verbose_name='ราคา')),
                ('color', models.CharField(blank=True, max_length=10, verbose_name='สี')),
                ('year', models.IntegerField(blank=True, verbose_name='ปี')),
                ('engine_no', models.CharField(blank=True, max_length=10, verbose_name='หมายเลขเครื่องยนต์')),
                ('chassis_no', models.CharField(blank=True, max_length=10, verbose_name='หมายเลขตัวถัง')),
                ('equipments', models.CharField(blank=True, max_length=100, verbose_name='อุปกรณืติดรถ')),
            ],
            options={
                'verbose_name': 'รถ',
                'verbose_name_plural': 'รถ',
                'ordering': ['registration_no'],
            },
        ),
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fullname', models.CharField(max_length=100, verbose_name='ชื่อ-นามสกุล')),
                ('age', models.IntegerField(blank=True, verbose_name='อายุ')),
                ('house_no', models.CharField(blank=True, max_length=10, verbose_name='บ้านเลขที่')),
                ('road', models.CharField(blank=True, max_length=50, verbose_name='ถนน')),
                ('sub_district', models.CharField(blank=True, max_length=50, verbose_name='ตำบล/แขวง')),
                ('district', models.CharField(blank=True, max_length=50, verbose_name='อำเภอ/เขต')),
                ('province', models.CharField(blank=True, max_length=50, verbose_name='จังหวัด')),
                ('postal_code', models.CharField(blank=True, max_length=10, verbose_name='รหัสไปรษณีย์')),
                ('telephone_no', models.CharField(blank=True, max_length=20, verbose_name='เบอร์โทร')),
                ('card_type', models.CharField(blank=True, max_length=10, verbose_name='ชนิดบัตร')),
                ('card_no', models.CharField(blank=True, max_length=10, verbose_name='เลขบัตร')),
                ('card_place', models.CharField(blank=True, max_length=10, verbose_name='ออกให้ ณ')),
                ('card_date', models.CharField(blank=True, max_length=10, verbose_name='วันที่ออก')),
            ],
            options={
                'verbose_name': 'ผู้ติดต่อ',
                'verbose_name_plural': 'ผู้ติดต่อ',
                'ordering': ['fullname'],
            },
        ),
        migrations.CreateModel(
            name='Maintenance',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, verbose_name='รายการซ่อม')),
                ('charges', models.IntegerField(verbose_name='ราคา')),
                ('car', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ppcarcenter.Car')),
            ],
            options={
                'verbose_name': 'รายการซ่อม',
                'verbose_name_plural': 'รายการซ่อม',
                'ordering': ['id'],
            },
        ),
    ]
