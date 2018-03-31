

- 创建项目
    - 使用pycharm创建项目的时候一定不要勾选使用admin，本项目使用的是xadmin
    - 在settings里面需要替换系统的用户```AUTH_USER_MODEL = 'users.UserProfile'```
    - 使用的xadmin文件一定要复制我文件中的，原生的xadmin我做了修改

- 创建应用
    - 使用命令创建应用goods，trade，users，user_operation，
    - 项目中我是把应用放在了apps这个包里面，所以在settings注册的时候一定要加上apps这个包名


- 导入数据
    - 一定不要忘记在settings里面先初始化路径
    - 执行脚本文件进行导入数据，一定要先执行category文件，导入类别，再导入商品
    - 导入的时候可能会报错
    ```
    django.core.exceptions.ImproperlyConfigured: Requested setting UEDITOR_SETTINGS, but settings are not configured. You must either define the environment variable DJANGO_SETTINGS_MODULE or call settings.configure() before accessing settings.
    ```
    是因为导入的位置不对，```from apps.goods.models import GoodsCategory```导入的位置一定不能出错


- 跨域问题
    - 在settings里面设置csrf，配置好跨域













