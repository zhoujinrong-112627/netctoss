from django.core.paginator import Paginator, Page
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect

# Create your views here.
from django.urls import reverse

from App.models import Cost


def costlist(request):

    pn = int(request.GET.get('page',1))

    cost_list = Cost.objects.all()

    sort_rule = request.GET.get('sort_rule')

    page_sort_rule = sort_rule


    # 如果你接收到了排序规则 那么进行排序
    # 如果没有接受到排序规则  那么按原计划进行
    if sort_rule == 'sort_desc':
        cost_list = cost_list.order_by('-base_cost')
        sort_rule = 'sort_asc'
    elif sort_rule == 'sort_asc':
        cost_list = cost_list.order_by('base_cost')
        sort_rule = 'sort_desc'
    else:
        sort_rule = 'sort_asc'

    pagin = Paginator(cost_list,3)
    # 总页数 和 当前页不一致
    #  1   <    2

    # 获取总页数
    totalpage = pagin.num_pages

    if totalpage < pn:
        pn = pn-1

    p = pagin.page(pn)

    context = {
        'p':p,
        'pagin':pagin,
        'pn':int(pn),
        'sort_rule':sort_rule,
        'page_sort_rule':page_sort_rule,
    }

    return render(request,'netctoss/fee/fee_list.html',context=context)


def costdetete(request):
    id = request.GET.get('id')
    page = request.GET.get('page')

    cost = Cost.objects.get(pk=id)

    cost.delete()
    # bug在第二页删除之后 会跳转到第一页
    # 解决方案： （1）路由参数 （2）cookie/session

    # reverse('netctoss:costlist') ===  /netcotss/costlist/

    return redirect(reverse('netctoss:costlist')+'?page=' + page)


def costload(request):
    id = request.GET.get('id')
    cost = Cost.objects.get(pk=id)
    context = {
        'cost':cost
    }
    return render(request,'netctoss/fee/fee_modi.html',context=context)


def costupdate(request):
    id = request.POST.get('id')
    cost = Cost.objects.get(pk=id)

    name = request.POST.get('name')
    cost_type = request.POST.get('cost_type')
    base_duration = request.POST.get('base_duration')
    base_cost = request.POST.get('base_cost')
    unit_cost = request.POST.get('unit_cost')
    descr = request.POST.get('descr')


    cost.name = name
    cost.cost_type = cost_type
    cost.base_duration = base_duration
    cost.base_cost = base_cost
    cost.unit_cost = unit_cost
    cost.descr = descr

    cost.save()



    return redirect(reverse('netctoss:costlist'))


def costToAdd(request):
    return render(request,'netctoss/fee/fee_add.html')


def costadd(request):
    name = request.POST.get('name')
    cost_type = request.POST.get('cost_type')
    base_duration = request.POST.get('base_duration')
    base_cost = request.POST.get('base_cost')
    unit_cost = request.POST.get('unit_cost')
    descr = request.POST.get('descr')

    cost = Cost()

    cost.name = name
    cost.cost_type = cost_type
    cost.base_duration = base_duration
    cost.base_cost = base_cost
    cost.unit_cost = unit_cost
    cost.descr = descr

    cost.save()

    return redirect(reverse('netctoss:costlist'))


def changeFeeStatus(request):
    cost_id = request.GET.get('cost_id')
    cost = Cost.objects.get(pk=cost_id)

    cost.status = '1'
    cost.save()
    data = {
        'msg':'ok',
        'status':200,
    }
    return JsonResponse(data=data)


def costCheckName(request):
    name = request.GET.get('name')

    cost = Cost.objects.filter(name=name)

    data = {
        'status':200
    }

    if cost.exists():
        data['msg']='用户名字已经存在，请换另一个名字'
        data['status']=204
    else:
        data['msg'] = '用户名字可以使用'


    return JsonResponse(data=data)