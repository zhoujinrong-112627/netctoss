from django.conf.urls import url

from App import views

urlpatterns = [
    # 资费模块
    # 遍历数据 costlist
    url(r'^costlist/', views.costlist, name='costlist'),
    #     删除数据 costdelete
    url(r'^costdelete/', views.costdetete),
    #     跳转到修改的页面
    url(r'^costload/', views.costload),
    #     修改
    url(r'^costupdate/', views.costupdate, name='costupdate'),
    #    跳转到添加页面
    url(r'^costToAdd/', views.costToAdd),
    #     添加
    url(r'^costadd/', views.costadd, name='costadd'),
    #     修改状态
    url(r'^changeFeeStatus/', views.changeFeeStatus, name='changeFeeStatus'),
    #    用户名字后台验证
    url(r'^costCheckName/',views.costCheckName),
]
