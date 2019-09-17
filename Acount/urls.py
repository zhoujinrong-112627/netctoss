from django.conf.urls import url

from Account import views

urlpatterns = [
    url(r'^accountlist/', views.accountlist, name='accountlist'),
    url(r'^accountdelete/',views.accountdelete),
    url(r'^accountstart/',views.accountstart),
    url(r'^accountToUpdate/',views.accountToUpdate),
    url(r'^accountToAdd/',views.accountToAdd,name='accountToAdd'),
    url(r'^accountAdd/',views.accountAdd,name='accountAdd'),
    url(r'^accountGetRecommderId/',views.accountGetRecommderId),
    url(r'^accountCheckName/',views.accountCheckName),
    url(r'^accountPause/',views.accountPause),
]
