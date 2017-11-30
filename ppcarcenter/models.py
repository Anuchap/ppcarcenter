from django.db import models

# Create your models here.

class Car(models.Model):
    registration_no = models.CharField(max_length=10, verbose_name='เลขทะเบียน')
    model = models.CharField(blank=True, max_length=20, verbose_name='รุ่น')
    value = models.IntegerField(blank=True, default=0, verbose_name='ราคา')
    color = models.CharField(blank=True, max_length=10, verbose_name='สี')
    year = models.IntegerField(blank=True, verbose_name="ปี")
    engine_no = models.CharField(blank=True, max_length=10, verbose_name='หมายเลขเครื่องยนต์')
    chassis_no = models.CharField(blank=True, max_length=10, verbose_name='หมายเลขตัวถัง')
    equipments = models.TextField(blank=True, max_length=100, verbose_name='อุปกรณืติดรถ')

    class Meta:
        verbose_name_plural = 'รถ'
        verbose_name = 'รถ'
        ordering = ['registration_no']

    def __str__(self):
        return '%s (%s)' % (self.registration_no, self.model)


class Maintenance(models.Model):
    name = models.CharField(max_length=100, verbose_name='รายการซ่อม')
    charges = models.IntegerField(verbose_name='ราคา')
    car = models.ForeignKey(Car, verbose_name='รถ')

    class Meta:
        verbose_name_plural = 'รายการซ่อม'
        verbose_name = 'รายการซ่อม'
        ordering = ['id']

    def __str__(self):
        return self.name


class Contact(models.Model):
    fullname = models.CharField(max_length=100, verbose_name='ชื่อ-นามสกุล')
    age = models.IntegerField(blank=True,verbose_name='อายุ')
    house_no = models.CharField(blank=True,max_length=10, verbose_name='บ้านเลขที่')
    road = models.CharField(blank=True,max_length=50, verbose_name='ถนน')
    sub_district = models.CharField(blank=True,max_length=50, verbose_name='ตำบล/แขวง')
    district = models.CharField(blank=True,max_length=50, verbose_name='อำเภอ/เขต')
    province = models.CharField(blank=True,max_length=50, verbose_name='จังหวัด')
    postal_code = models.CharField(blank=True,max_length=10, verbose_name='รหัสไปรษณีย์')
    telephone_no = models.CharField(blank=True,max_length=20, verbose_name='เบอร์โทร')
    card_type = models.CharField(blank=True,max_length=10, verbose_name='ชนิดบัตร')
    card_no = models.CharField(blank=True,max_length=20, verbose_name='เลขบัตร')
    card_place = models.CharField(blank=True,max_length=10, verbose_name='ออกให้ ณ')
    card_date = models.DateField(blank=True, verbose_name='วันที่ออก')

    class Meta:
        verbose_name_plural = 'ผู้ติดต่อ'
        verbose_name = 'ผู้ติดต่อ'
        ordering = ['fullname']

    def __str__(self):
        return self.fullname


class Purchase(models.Model):
    seller = models.ForeignKey(Contact, related_name='contact_purcase_seller', verbose_name='ผู้ขาย')
    buyer = models.ForeignKey(Contact, related_name='contact_purcase_buyer', verbose_name='ผู้ซื้อ')
    car = models.ForeignKey(Car, verbose_name='รถ')
    price = models.IntegerField(blank=True, verbose_name='ราคาขาย')
    deposit = models.IntegerField(blank=True, verbose_name='เงินมัดจำ')
    note = models.TextField(blank=True, verbose_name='หมายเหตุ')

    class Meta:
        verbose_name_plural = 'สัญญาซื้อรถยนต์'
        verbose_name = 'สัญญาซื้อรถยนต์'
        ordering = ['id']

    def __str__(self):
        return self.seller.fullname

class Sales(models.Model):
    seller = models.ForeignKey(Contact, related_name='contact_sales_seller', verbose_name='ผู้ขาย')
    buyer = models.ForeignKey(Contact, related_name='contact_sales_buyer', verbose_name='ผู้ซื้อ')
    car = models.ForeignKey(Car, verbose_name='รถ')
    price = models.IntegerField(blank=True, verbose_name='ราคาขาย')
    deposit = models.IntegerField(blank=True, verbose_name='เงินมัดจำ')
    note = models.TextField(blank=True, verbose_name='หมายเหตุ')

    class Meta:
        verbose_name_plural = 'สัญญาขายรถยนต์'
        verbose_name = 'สัญญาขายรถยนต์'
        ordering = ['id']

    def __str__(self):
        return self.buyer.fullname

