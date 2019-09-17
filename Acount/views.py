from django.core.paginator import Paginator
from django.http import JsonResponse
from django.shortcuts import render, redirect

# Create your views here.
from django.urls import reverse
from django.views.decorators.csrf import csrf_exempt

from Account.models import Account


def accountlist(request):

    idcardno = request.POST.get('idcard_no')
    realname = request.POST.get('real_name')
    loginname = request.POST.get('login_name')
    status = request.POST.get('status')

    # 可以直接在option中添加value属性  直接获取对应的value值
    # if status == '开通':
    #     status = '0'
    # elif status == '暂停':
    #     status = '1'
    # elif status == '删除':
    #     status = '2'
    # else:
    #     status = None


    search_dict = request.GET.get('search_dict')


    if not search_dict:
        search_dict = dict()
    else:
        search_dict = eval(search_dict)


    if idcardno:
        search_dict['idcard_no']=idcardno
    if realname:
        search_dict['real_name']=realname
    if loginname:
        search_dict['login_name']=loginname
    if status:
        search_dict['status'] = status

    # 如果字典中没有数据 那么就是查询的所有
    # 如果有数据  那么查询就是对应的过滤条件
    account_list = Account.objects.filter(**search_dict)

    page = int(request.GET.get('page',1))

    # account_list = Account.objects.all()

    pagin = Paginator(account_list,3)

    p = pagin.page(page)

    context = {
        'pagin':pagin,
        'p':p,
        'pn':page,
        'search_dict':search_dict
    }

    return render(request,'netctoss/account/account_list.html',context=context)


def accountdelete(request):
    accountid = request.GET.get('accountid')

    account = Account.objects.get(pk=accountid)

    service_list = account.service_set.all()

    for service in service_list:
        service.status = '2'
        service.save()


    account.status = '2'

    account.save()


    data= {
        'msg':'ok',
        'status':200
    }
    return JsonResponse(data=data)


def accountstart(request):
    accountid = request.GET.get('accountid')

    account = Account.objects.get(pk=accountid)

    account.status = '0'

    account.pause_date = None

    account.save()

    data = {
        'msg': 'ok',
        'status': 200
    }
    return JsonResponse(data=data)


def accountToUpdate(request):
    id = request.GET.get('id')

    account = Account.objects.get(pk=id)

    idcardno = account.idcard_no

    # 210727 2000 05 01 xxxx
    # 2000/05/01
    year = idcardno[6:10]
    month = idcardno[10:12]
    day = idcardno[12:14]

    birth = year + '/' + month + '/' + day

    # 会有异常  原因是因为 如果该对象没有推荐人  那么推荐人的id就为空
    # 所以查询不到对象
    # 解决方法  如果没有推荐人 那么设置为‘’

    context = {
        'account': account,
        'birth': birth
    }

    if account.recommender_id:
        a = Account.objects.get(pk=account.recommender_id)
        context['r_idcard_no'] = a.idcard_no



    return render(request,'netctoss/account/account_modi.html',context=context)


def accountToAdd(request):
    return render(request,'netctoss/account/account_add.html')


def accountAdd(request):
    print('111111')
    real_name = request.POST.get('real_name')
    idcard_no = request.POST.get('idcard_no')
    login_name = request.POST.get('login_name')
    login_passwd = request.POST.get('login_passwd')
    telephone = request.POST.get('telephone')
    # 推荐人的身份证 recommder_idcardno是一个隐藏域
    recommder_id = request.POST.get('recommder_idcardno')
    birthday = request.POST.get('birthday')
    email = request.POST.get('email')
    occupation = request.POST.get('occupation')
    sex = request.POST.get('sex')
    mailaddress = request.POST.get('mailaddress')
    zipcode = request.POST.get('zipcode')
    qq = request.POST.get('qq')

    print(recommder_id)

    # a = Account.objects.filter(idcard_no=recommder_idcardno).first()
    #
    # xxxx = a.id



    account = Account()
    # xxxx是根据recommder_idcardno 找到对应的account对象 在把 account的id 给 recommender_id
    account.recommender_id = recommder_id
    account.real_name=real_name
    account.idcard_no = idcard_no
    account.login_name = login_name
    account.login_passwd = login_passwd
    account.telephone = telephone
    account.birthdate = birthday
    account.email = email
    account.occupation = occupation
    account.gender = sex
    account.mailaddress = mailaddress
    account.zipcode = zipcode
    account.qq = qq

    account.save()



    return redirect(reverse('account:accountlist'))


def accountGetRecommderId(request):
    recommder_idcard = request.GET.get('recommder_idcard')

    account = Account.objects.filter(idcard_no=recommder_idcard).first()

    recommender_id = account.id

    data = {
        'msg':'ok',
        'status':200,
        'recommender_id':recommender_id
    }
    return JsonResponse(data=data)


def accountCheckName(request):

    name = request.GET.get('name')

    accounts = Account.objects.filter(real_name=name)

    data = {

    }

    if accounts.exists():
        data['msg']='error'
        data['status']=404
    else:
        data['msg']='ok'
        data['status']=200

    return JsonResponse(data=data)

@csrf_exempt
def accountPause(request):
    accountid = request.POST.get('accountid')
    account = Account.objects.get(pk=accountid)

    service_list = account.service_set.all()

    for service in service_list:
        service.status = 1
        service.save()


    account.status = 1

    account.save()

    data = {
        'msg':'ok',
        'status':200
    }

    return JsonResponse(data=data)