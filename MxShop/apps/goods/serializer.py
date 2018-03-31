# -*- coding:UTF-8 -*-
from django.db.models import Q
from rest_framework import serializers
# 类似于Django中的表单的功能，但是他可以序列化为json
from apps.goods.models import GoodsCategory, GoodsImage, Goods, HotSearchWords, Banner, GoodsCategoryBrand, IndexAd


class CategorySerializer3(serializers.ModelSerializer):
    class Meta:
        model = GoodsCategory
        fields = '__all__'


class CategorySerializer2(serializers.ModelSerializer):
    sub_cat = CategorySerializer3(many=True)

    class Meta:
        model = GoodsCategory
        fields = '__all__'


class CategorySerializer(serializers.ModelSerializer):
    sub_cat = CategorySerializer2(many=True)

    class Meta:
        model = GoodsCategory
        fields = '__all__'


class GoodsImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = GoodsImage
        fields = ('image',)


# 继承自ModelSerializer，会直接和model做一个映射
class GoodsSerializer(serializers.ModelSerializer):
    category = CategorySerializer()  # 实例化
    images = GoodsImageSerializer(many=True)

    class Meta:
        model = Goods
        fields = '__all__'

class HotWordsSerializer(serializers.ModelSerializer):
    class Meta:
        model = HotSearchWords
        fields = "__all__"

class BannerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Banner
        fields = '__all__'


class BrandSerializer(serializers.ModelSerializer):
    class Meta:
        model = GoodsCategoryBrand
        fields = '__all__'


# 首页显示的商品
class IndexCategorySerializer(serializers.ModelSerializer):
    brands = BrandSerializer(many=True)
    # 自己查询数据并返回
    goods = serializers.SerializerMethodField()
    # 二级的商品分类
    sub_cat = CategorySerializer2(many=True)
    ad_goods = serializers.SerializerMethodField()

    def get_ad_goods(self, obj):
        goods_json = {}
        ad_goods = IndexAd.objects.all().filter(category_id=obj.id, )
        print(obj.id)
        print('obj', obj, type(obj))
        print('ad_goods', ad_goods)
        if ad_goods:
            goods_ins = ad_goods[0].goods
            print('goods_ins', goods_ins)
            # context={'request': self.context['request']})是为了加上域名，只有Serializer嵌套的时候使用
            goods_json = GoodsSerializer(goods_ins, many=False, context={'request': self.context['request']}).data
        print('goods_json', goods_json)
        return goods_json

    # obj就是当前对象
    def get_goods(self, obj):
        print(obj)
        print('obj_id',obj.id)
        all_goods = Goods.objects.filter(Q(category_id=obj.id) | Q(category__parent_category_id=obj.id) | Q(
            category__parent_category__parent_category_id=obj.id))
        goods_serializer = GoodsSerializer(instance=all_goods, many=True, context={'request': self.context['request']})
        print('goods_serializer.data',goods_serializer.data)
        # 序列化之后的json格式的数据
        return goods_serializer.data

    class Meta:
        model = GoodsCategory
        fields = "__all__"
