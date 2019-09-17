from django.core.paginator import Paginator
from django.http import JsonResponse
from django.shortcuts import render

# Create your views here.
from Account.models import Account
from Service.models import Service


def servicelist(request):

    os_username = request.POST.get('osusername')
    unix_host = request.POST.get('unixhost')
    idcard_no = request.POST.get('idcardno')
    status = request.POST.get('status')


    service_dict=request.GET.get('service_dict')

    if service_dict:
        service_dict = eval(service_dict)
    else:
        service_dict = {}

    if os_username:
        service_dict['os_username']=os_username
    if unix_host:
        service_dict['unix_host']=unix_host
    if idcard_no:
        account = Account.objects.filter(idcard_no=idcard_no)
        service_dict['account']=account
    if status:
        service_dict['status'] = status

    service_list = Service.objects.filter(**service_dict)


    # service_list = Service.objects.all()

    page = int(request.GET.get('page',1))

    pagin = Paginator(service_list,3)

    p = pagin.page(page)

    context = {
        'pagin':pagin,
        'p':p,
        'pn':page,
        'service_dict':service_dict
    }

    return render(request,'netctoss/service/service_list.html',context = context)


def serviceStart(request):
    serviceid = request.GET.get('serviceid')

    service = Service.objects.get(pk=serviceid)

    status = service.account.status

    data = {
        'status': 200
    }

    if status == '0':
        service.status = '0'

        service.save()
    else:
        data['msg'] = '请先开通帐务帐号'
        data['status'] = 204

    return JsonResponse(data=data)