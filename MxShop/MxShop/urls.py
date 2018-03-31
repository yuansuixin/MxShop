# -*- coding:UTF-8 -*-
"""VueShop URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin
from rest_framework.authtoken import views
from rest_framework.documentation import include_docs_urls
from rest_framework.routers import DefaultRouter
from rest_framework_jwt.views import obtain_jwt_token

from MxShop.settings import MEDIA_ROOT
from django.views.static import serve


# 配置goods的urls
from apps.goods.views import GoodsListViewSet, CategoryViewset, BannerViewset, HotSearchsViewset, IndexCategoryViewset
from apps.trade.views import AlipayView, ShoppingCartViewset, OrderViewset
from apps.user_operation.views import UserFavViewset, LeavingMessageViewset, AddressViewset
from apps.users.views import SmsCodeViewset, UserViewset
from extra_apps import xadmin

router = DefaultRouter()
router.register(r'goods', GoodsListViewSet, base_name='goods')

# 配置category的url
router.register(r'categorys', CategoryViewset, base_name='categorys')
# # 绑定,完成了绑定，get绑定到list
# goods_list = GoodsListViewSet.as_view({
#     'get':'list',
# })

# 收藏
router.register(r'userfavs', UserFavViewset, base_name='userfavs')
# 留言
router.register(r'messages', LeavingMessageViewset, base_name='messages')
# 收货地址
router.register(r'address', AddressViewset, base_name='address')
# 购物车
router.register(r'shopcarts', ShoppingCartViewset, base_name='shopcarts')
# 订单
router.register(r'orders', OrderViewset, base_name='orders')
# 轮播图
router.register(r'banners', BannerViewset, base_name='banners')
# 热搜
router.register(r'hotsearchs', HotSearchsViewset, base_name="hotsearchs")
# 首页商品数据
router.register(r'indexgoods', IndexCategoryViewset, base_name='indexgoods')
# 用户
router.register(r'users', UserViewset, base_name="users")
# 验证码
router.register(r'codes', SmsCodeViewset, base_name="codes")


urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),
    # url(r'^admin/', admin.site.urls),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),

    url(r'^media/(?P<path>.*)$', serve, {'document_root': MEDIA_ROOT}),

    #     商品列表页
    url(r'^', include(router.urls)),

    url(r'^docs/', include_docs_urls(title='青稞生活馆')),
    # drf自带的token认证模式
    url(r'^api-token-auth/', views.obtain_auth_token),
    #     jwt的认证接口
    url(r'login/', obtain_jwt_token),
    # url(r'login/$', obtain_jwt_token),
    url(r'^alipay/return/', AlipayView.as_view(),name='alipay'),

#     第三方登录
    url('',include('social_django.urls',namespace='social')),
]
