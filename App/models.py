from django.db import models

# Create your models here.

# create table COST
# (
#   id            NUMBER(4) not null,
#   name          VARCHAR2(50) not null,
#   base_duration NUMBER(11),
#   base_cost     NUMBER(7,2),
#   unit_cost     NUMBER(7,4),
#   status        CHAR(1),
#   descr         VARCHAR2(100),
#   creatime      DATE default SYSDATE,
#   startime      DATE,
#   cost_type     CHAR(1)
# )

# insert into COST (id, name, base_duration, base_cost, unit_cost, status, descr, creatime, startime, cost_type)
# values (1, '5.9元套餐', 20, 5.9, .0111, '0', '5.9元20小时/月,超出部分0.0111分/秒', to_date('13-05-2013 17:17:52', 'dd-mm-yyyy hh24:mi:ss'), null, '2');
# insert into COST (id, name, base_duration, base_cost, unit_cost, status, descr, creatime, startime, cost_type)
# values (2, '6.9元套餐', 40, 6.9, .0083, '0', '6.9元40小时/月,超出部分0.0083分/秒', to_date('13-05-2013 17:17:52', 'dd-mm-yyyy hh24:mi:ss'), null, '2');
# insert into COST (id, name, base_duration, base_cost, unit_cost, status, descr, creatime, startime, cost_type)
# values (3, '8.5元套餐', 100, 8.5, .0056, '0', '8.5元100小时/月,超出部分0.0056分/秒', to_date('13-05-2013 17:17:52', 'dd-mm-yyyy hh24:mi:ss'), null, '2');
# insert into COST (id, name, base_duration, base_cost, unit_cost, status, descr, creatime, startime, cost_type)
# values (4, '10.5元套餐', 200, 10.5, .0028, '0', '10.5元200小时/月,超出部分0.0028分/秒', to_date('13-05-2013 17:17:52', 'dd-mm-yyyy hh24:mi:ss'), null, '2');
# insert into COST (id, name, base_duration, base_cost, unit_cost, status, descr, creatime, startime, cost_type)
# values (5, '计时收费', null, null, .0139, '0', '0.0139分/秒,不使用不收费', to_date('13-05-2013 17:17:52', 'dd-mm-yyyy hh24:mi:ss'), null, '3');
# insert into COST (id, name, base_duration, base_cost, unit_cost, status, descr, creatime, startime, cost_type)
# values (6, '包月', null, 20, null, '0', '每月20元,不限制使用时间', to_date('13-05-2013 17:17:52', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

class Cost(models.Model):
    name = models.CharField(max_length=64)
    base_duration = models.IntegerField()
    base_cost = models.FloatField()
    unit_cost = models.FloatField()
    status = models.CharField(max_length=8,default='0')
    descr = models.CharField(max_length=128)
    # creatime = models.CharField(max_length=32)
    # startime = models.CharField(max_length=32)
    creatime = models.DateTimeField(auto_now_add=True)
    startime = models.DateTimeField(auto_now=True)

    cost_type = models.CharField(max_length=8)

    class Meta:
        db_table='cost'




