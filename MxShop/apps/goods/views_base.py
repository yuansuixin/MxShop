# -*- coding:UTF-8 -*-
import json

from django.core import serializers
from django.http import HttpResponse, JsonResponse
from django.views.generic.base import View

from apps.goods.models import Goods


class GoodsListView(View):
    def get(self,request):
        """
        通过Django的view实现商品列表页
        :param request:
        :return:
        """
        json_list = []
        goods = Goods.objects.all()[:10]
        # for good in goods:
        #     json_dict = {}
        #     json_dict['name'] = good.name
        #     json_dict['category'] = good.category.name
        #     json_dict['market_price'] = good.market_price
        #     json_list.append(json_dict)
        # Django提供的模型直接转换成字典格式
        # for good in goods:
        #     json_dict = model_to_dict(good)
        #     json_list.append(json_dict)
        json_data = serializers.serialize('json',goods)
        json_data = json.loads(json_data)
        return JsonResponse(json_data,safe=False)




