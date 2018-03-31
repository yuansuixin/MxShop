

import os
# 独立使用Django的model
import sys

# 获取当前文件的路径


pwd = os.path.dirname(os.path.realpath(__file__))
# 将项目的根目录加入Python的搜索路径之下
sys.path.append(pwd+'../')
# 设置环境变量
# os.environ.setdefault("DJANGO_SETTINGS_MODULE", "MxShop.settings")
os.environ['DJANGO_SETTINGS_MODULE'] = "MxShop.settings"


import django
django.setup()

# 以下的位置都可以直接使用model了

# 导入的位置一定不能出错
from apps.goods.models import GoodsCategory
from db_tools.data.category_data import row_data

# 导入数据,商品级联的类别
for lev1_cat in row_data:
    # 一级类别
    lev1_intance = GoodsCategory()
    lev1_intance.code = lev1_cat["code"]
    lev1_intance.name = lev1_cat["name"]
    lev1_intance.category_type = 1
    lev1_intance.save()
    # 二级类别
    for lev2_cat in lev1_cat["sub_categorys"]:
        lev2_intance = GoodsCategory()
        lev2_intance.code = lev2_cat["code"]
        lev2_intance.name = lev2_cat["name"]
        lev2_intance.category_type = 2
        lev2_intance.parent_category = lev1_intance
        lev2_intance.save()
        # 三级类别
        for lev3_cat in lev2_cat["sub_categorys"]:
            lev3_intance = GoodsCategory()
            lev3_intance.code = lev3_cat["code"]
            lev3_intance.name = lev3_cat["name"]
            lev3_intance.category_type = 3
            lev3_intance.parent_category = lev2_intance
            lev3_intance.save()






