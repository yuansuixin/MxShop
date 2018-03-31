# -*- coding:UTF-8 -*-
#  Create your views here.
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import generics, mixins, viewsets
from rest_framework.pagination import PageNumberPagination
from rest_framework import filters
from rest_framework.response import Response
from rest_framework_extensions.cache.mixins import CacheResponseMixin

from apps.goods.filters import GoodsFilter
from apps.goods.models import Goods, GoodsCategory, HotSearchWords, Banner
from apps.goods.serializer import GoodsSerializer, CategorySerializer, HotWordsSerializer, BannerSerializer, \
    IndexCategorySerializer


class GoodsPagination(PageNumberPagination):
    page_size = 12
    page_size_query_param = 'page_size'
    page_query_param = 'page'
    max_page_size = 100


class GoodsListViewSet(CacheResponseMixin,mixins.ListModelMixin, mixins.RetrieveModelMixin, viewsets.GenericViewSet):
    """
    商品列表页,商品是在后台添加,分页，搜索，过滤，排序
    """
    queryset = Goods.objects.all()
    serializer_class = GoodsSerializer
    pagination_class = GoodsPagination
    # authentication_classes = (TokenAuthentication,)
    filter_backends = (DjangoFilterBackend, filters.SearchFilter)
    filter_class = GoodsFilter
    search_fields = ('name', 'goods_brief', 'goods_desc')
    ordering_fields = ('sold_num', 'shop_price')

    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        instance.click_num += 1
        instance.save()
        serializer = self.get_serializer(instance)
        return Response(serializer.data)


class CategoryViewset(mixins.ListModelMixin, mixins.RetrieveModelMixin, viewsets.GenericViewSet):
    """
    list:
        商品分类列表数据
    retrieve:
        获取商品分类详情
    """
    queryset = GoodsCategory.objects.filter(category_type=1)
    serializer_class = CategorySerializer



    # 继承API的时候
    # def get(self,request,format=None):
    #     goods = Goods.objects.all()[:10]
    #     goods_serializer = GoodsSerializer(goods,many=True)
    #     return Response(goods_serializer.data)

    # def post(self,request,format=None):
    #     serializer = GoodsSerializer(data=request.data)
    #     if serializer.is_valid():
    #         serializer.save()
    #         return Response(serializer.data,status=status.HTTP_201_CREATED)
    #     return Response(serializer.errors,status=status.HTTP_400_BAD_REQUEST)




class HotSearchsViewset(mixins.ListModelMixin, viewsets.GenericViewSet):
    """
    获取热搜词列表
    """
    queryset = HotSearchWords.objects.all().order_by("-index")
    serializer_class = HotWordsSerializer

class BannerViewset(mixins.ListModelMixin, viewsets.GenericViewSet):
    """
    获取轮播图列表
    """
    queryset = Banner.objects.all().order_by('index')
    serializer_class = BannerSerializer


class IndexCategoryViewset(mixins.ListModelMixin, viewsets.GenericViewSet):
    """
    首页商品数据
    """
    # 根据导航的数据显示
    # queryset = GoodsCategory.objects.filter(is_tab=True, name__in=['生鲜食品', '酒水饮料'])
    queryset = GoodsCategory.objects.filter(is_tab=True, )
    serializer_class = IndexCategorySerializer
