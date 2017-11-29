from django.db import models

# Create your models here.
class Car(models.Model):
    registration_no = models.CharField(max_length=10, verbose_name='เลขทะเบียน')

    class Meta:
        verbose_name_plural = 'รถ'
        verbose_name = 'รถ'
        ordering = ['registration_no']

    def __str__(self):
        return self.registration_no


class Maintenance(models.Model):
    name = models.CharField(max_length=100, verbose_name='รายการซ่อม')
    charges = models.IntegerField(verbose_name='ราคา')
    car = models.ForeignKey(Car)

    class Meta:
        verbose_name_plural = 'รายการซ่อม'
        verbose_name = 'รายการซ่อม'
        ordering = ['id']

    def __str__(self):
        return self.name

