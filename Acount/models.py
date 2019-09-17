from django.db import models

# Create your models here.


# create table ACCOUNT
# (
#   id              NUMBER(9) not null,
#   recommender_id  NUMBER(9),
#   login_name      VARCHAR2(30) not null,
#   login_passwd    VARCHAR2(30) not null,
#   status          CHAR(1),
#   create_date     DATE default SYSDATE,
#   pause_date      DATE,
#   close_date      DATE,
#   real_name       VARCHAR2(20) not null,
#   idcard_no       CHAR(18) not null,
#   birthdate       DATE,
#   gender          CHAR(1),
#   occupation      VARCHAR2(50),
#   telephone       VARCHAR2(15) not null,
#   email           VARCHAR2(50),
#   mailaddress     VARCHAR2(50),
#   zipcode         CHAR(6),
#   qq              VARCHAR2(15),
#   last_login_time DATE,
#   last_login_ip   VARCHAR2(15)
# )

class Account(models.Model):
    # 推荐人id
    recommender_id  = models.IntegerField(16,null=True,blank=True)
    login_name = models.CharField(max_length=32)
    login_passwd = models.CharField(max_length=32)
    status = models.CharField(max_length=8,default='0')
    create_date = models.DateTimeField(auto_now_add=True)
    pause_date = models.DateTimeField(auto_now=True,null=True,blank=True)
    close_date = models.DateTimeField(auto_now=True,null=True,blank=True)
    real_name = models.CharField(max_length=32)
#     身份证号
    idcard_no = models.CharField(max_length=18)
    birthdate = models.CharField(max_length=18,null=True,blank=True)
    gender = models.CharField(max_length=8,null=True,blank=True)
    # 职业
    occupation = models.CharField(max_length=64,null=True,blank=True)
    telephone = models.CharField(max_length=18)
    email = models.CharField(max_length=64,null=True,blank=True)
    mailaddress = models.CharField(max_length=64,null=True,blank=True)
    zipcode = models.CharField(max_length=18,null=True,blank=True)
    qq = models.CharField(max_length=18,null=True,blank=True)
    last_login_time = models.DateTimeField(auto_now=True,null=True,blank=True)
    last_login_ip = models.CharField(max_length=18,null=True,blank=True)

    class Meta:
        db_table = 'ACCOUNT'














