from django.conf.urls import url

from Service import views

urlpatterns = [
    url(r'^servicelist/', views.servicelist, name='servicelist'),
    url(r'^serviceStart/',views.serviceStart),

]
