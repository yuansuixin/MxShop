# -*- coding: UTF-8 -*-
import time
from random import Random

from rest_framework import serializers

from apps.goods.models import Goods
from apps.goods.serializer import GoodsSerializer
from apps.trade.models import ShoppingCart, OrderGoods, OrderInfo


class ShopCartDetailSerializer(serializers.ModelSerializer):
    goods = GoodsSerializer(many=False)
    class Meta:
        model = ShoppingCart
        fields = '__all__'



class ShopCartSerializer(serializers.Serializer):
    user = serializers.HiddenField(
        default=serializers.CurrentUserDefault()
    )
    nums = serializers.IntegerField(required=True,min_value=1,
                                    error_messages={
                                        'min_value':'商品数量不能小于1',
                                        'required':'请选择购买数量'
                                    })
    goods = serializers.PrimaryKeyRelatedField(required=True,queryset=Goods.objects.all())
    # 判断购物车里面是否有商品
    def create(self, validated_data):
        user = self.context['request'].user
        nums = validated_data['nums']
        goods = validated_data['goods']

        existed = ShoppingCart.objects.filter(user=user,goods=goods)

        if existed:
            existed = existed[0]
            existed.nums +=nums
        else:
            ShoppingCart.objects.create(**validated_data)

        return existed

    def update(self, instance, validated_data):
#         修改商品数量
        instance.nums = validated_data['nums']
        instance.save()
        return instance


class OrderGoodsSerializer(serializers.ModelSerializer):
    goods = GoodsSerializer(many=False)
    class Meta:
        model = OrderGoods
        fields = '__all__'

class OrderDetailSerializer(serializers.ModelSerializer):
    goods = OrderGoodsSerializer(many=True)
    class Meta:
        model = OrderInfo
        fields = '__all__'


class OrderSerializer(serializers.ModelSerializer):
    user = serializers.HiddenField(
        default=serializers.CurrentUserDefault()
    )

    pay_status = serializers.CharField(read_only=True)
    trade_no = serializers.CharField(read_only=True)
    order_sn = serializers.CharField(read_only=True)
    pay_time = serializers.CharField(read_only=True)



    def generate_order_sn(self):
        # 当前时间+userid+随机数
        random_ins = Random()
        order_sn = "{time_str}{userid}{ranstr}".format(time_str=time.strftime("%Y%m%d%H%M%S"),
                                                       userid=self.context["request"].user.id,
                                                       ranstr=random_ins.randint(10, 99))

        return order_sn

    def validate(self, attrs):
        attrs['order_sn'] = self.generate_order_sn()
        return attrs


    class Meta:
        model = OrderInfo
        fields = '__all__'
