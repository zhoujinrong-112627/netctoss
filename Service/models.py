from django.db import models

# Create your models here.
# create table SERVICE
# (
#   id           NUMBER(10) not null,
#   account_id   NUMBER(9) not null,
#   unix_host    VARCHAR2(15) not null,
#   os_username  VARCHAR2(8) not null,
#   login_passwd VARCHAR2(8) not null,
#   status       CHAR(1),
#   create_date  DATE default SYSDATE,
#   pause_date   DATE,
#   close_date   DATE,
#   cost_id      NUMBER(4) not null
# )
from Account.models import Account
from App.models import Cost


class Service(models.Model):
    account = models.ForeignKey(Account)
    unix_host = models.CharField(max_length=16)
    os_username = models.CharField(max_length=16)
    login_passwd = models.CharField(max_length=16)
    status = models.CharField(max_length=8,default='0')
    create_date = models.DateTimeField(auto_now_add=True)
    pause_date = models.CharField(max_length=32,null=True,blank=True)
    close_date = models.CharField(max_length=32,null=True,blank=True)
    cost = models.ForeignKey(Cost)

    class Meta:
        db_table = 'SERVICE'
