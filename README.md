# django_auth_system
1.django+layuimini+mysql+auth_system后端使用django, 前端使用layuimini, 数据库使用mysql5.7的后台管理系统

2.目录结构
├── auth_system
│   ├── auth_system
│   │   ├── asgi.py
│   │   ├── __init__.py
│   │   ├── __pycache__
│   │   │   ├── __init__.cpython-38.pyc
│   │   │   ├── settings.cpython-38.pyc
│   │   │   ├── urls.cpython-38.pyc
│   │   │   └── wsgi.cpython-38.pyc
│   │   ├── settings.py
│   │   ├── urls.py
│   │   └── wsgi.py
│   ├── auth_system.ini
│   ├── auth_system.xml
│   ├── common
│   │   ├── API
│   │   │   ├── auth.py
│   │   │   ├── captcha.py
│   │   │   ├── echarts.py
│   │   │   ├── __init__.py
│   │   │   ├── log.py
│   │   │   ├── model_filter.py
│   │   │   ├── __pycache__
│   │   │   │   ├── auth.cpython-38.pyc
│   │   │   │   ├── captcha.cpython-38.pyc
│   │   │   │   ├── echarts.cpython-38.pyc
│   │   │   │   ├── __init__.cpython-38.pyc
│   │   │   │   ├── log.cpython-38.pyc
│   │   │   │   ├── model_filter.cpython-38.pyc
│   │   │   │   └── res_josn_data.cpython-38.pyc
│   │   │   └── res_josn_data.py
│   │   ├── __init__.py
│   │   └── __pycache__
│   │       └── __init__.cpython-38.pyc
│   ├── login
│   │   ├── admin.py
│   │   ├── apps.py
│   │   ├── __init__.py
│   │   ├── migrations
│   │   │   ├── 0001_initial.py
│   │   │   ├── 0002_logo.py
│   │   │   ├── __init__.py
│   │   │   └── __pycache__
│   │   │       ├── 0001_initial.cpython-38.pyc
│   │   │       ├── 0002_logo.cpython-38.pyc
│   │   │       └── __init__.cpython-38.pyc
│   │   ├── models.py
│   │   ├── __pycache__
│   │   │   ├── admin.cpython-38.pyc
│   │   │   ├── apps.cpython-38.pyc
│   │   │   ├── __init__.cpython-38.pyc
│   │   │   ├── models.cpython-38.pyc
│   │   │   ├── urls.cpython-38.pyc
│   │   │   └── views.cpython-38.pyc
│   │   ├── tests.py
│   │   ├── urls.py
│   │   └── views.py
│   ├── manage.py
│   ├── requirements.txt
│   ├── sql
│   │   └── auth_system.sql
│   ├── static
│   │   ├── api
│   │   │   ├── auth.json
│   │   │   ├── clear.json
│   │   │   ├── init.json
│   │   │   ├── menus.json
│   │   │   ├── table.json
│   │   │   ├── tableSelect.json
│   │   │   └── upload.json
│   │   ├── css
│   │   │   ├── layuimini.css
│   │   │   ├── public.css
│   │   │   └── themes
│   │   │       └── default.css
│   │   ├── images
│   │   │   ├── bg.jpg
│   │   │   ├── captcha.jpg
│   │   │   ├── donate_qrcode.png
│   │   │   ├── favicon.ico
│   │   │   ├── home.png
│   │   │   ├── icon-login.png
│   │   │   ├── loginbg.png
│   │   │   ├── logo1.png
│   │   │   └── logo.png
│   │   ├── js
│   │   │   ├── lay-config.js
│   │   │   └── lay-module
│   │   │       ├── echarts
│   │   │       │   ├── echarts.js
│   │   │       │   └── echartsTheme.js
│   │   │       ├── iconPicker
│   │   │       │   └── iconPickerFa.js
│   │   │       ├── layarea
│   │   │       │   └── layarea.js
│   │   │       ├── layuimini
│   │   │       │   ├── miniAdmin.js
│   │   │       │   ├── miniMenu.js
│   │   │       │   ├── miniTab.js
│   │   │       │   ├── miniTheme.js
│   │   │       │   └── miniTongji.js
│   │   │       ├── step-lay
│   │   │       │   ├── step.css
│   │   │       │   └── step.js
│   │   │       ├── tableSelect
│   │   │       │   └── tableSelect.js
│   │   │       ├── treetable-lay
│   │   │       │   ├── treetable.css
│   │   │       │   └── treetable.js
│   │   │       └── wangEditor
│   │   │           ├── fonts
│   │   │           │   └── w-e-icon.woff
│   │   │           ├── wangEditor.css
│   │   │           ├── wangEditor.js
│   │   │           ├── wangEditor.min.css
│   │   │           ├── wangEditor.min.js
│   │   │           └── wangEditor.min.js.map
│   │   └── lib
│   │       ├── font-awesome-4.7.0
│   │       │   ├── css
│   │       │   │   ├── font-awesome.css
│   │       │   │   └── font-awesome.min.css
│   │       │   ├── fonts
│   │       │   │   ├── FontAwesome.otf
│   │       │   │   ├── fontawesome-webfont.eot
│   │       │   │   ├── fontawesome-webfont.svg
│   │       │   │   ├── fontawesome-webfont.ttf
│   │       │   │   ├── fontawesome-webfont.woff
│   │       │   │   └── fontawesome-webfont.woff2
│   │       │   ├── HELP-US-OUT.txt
│   │       │   ├── less
│   │       │   │   ├── animated.less
│   │       │   │   ├── bordered-pulled.less
│   │       │   │   ├── core.less
│   │       │   │   ├── fixed-width.less
│   │       │   │   ├── font-awesome.less
│   │       │   │   ├── icons.less
│   │       │   │   ├── larger.less
│   │       │   │   ├── list.less
│   │       │   │   ├── mixins.less
│   │       │   │   ├── path.less
│   │       │   │   ├── rotated-flipped.less
│   │       │   │   ├── screen-reader.less
│   │       │   │   ├── stacked.less
│   │       │   │   └── variables.less
│   │       │   └── scss
│   │       │       ├── _animated.scss
│   │       │       ├── _bordered-pulled.scss
│   │       │       ├── _core.scss
│   │       │       ├── _fixed-width.scss
│   │       │       ├── font-awesome.scss
│   │       │       ├── _icons.scss
│   │       │       ├── _larger.scss
│   │       │       ├── _list.scss
│   │       │       ├── _mixins.scss
│   │       │       ├── _path.scss
│   │       │       ├── _rotated-flipped.scss
│   │       │       ├── _screen-reader.scss
│   │       │       ├── _stacked.scss
│   │       │       └── _variables.scss
│   │       ├── jq-module
│   │       │   ├── jquery.particleground.min.js
│   │       │   ├── paigusu.min.js
│   │       │   └── zyupload
│   │       │       ├── zyupload-1.0.0.min.css
│   │       │       └── zyupload-1.0.0.min.js
│   │       ├── jquery-3.4.1
│   │       │   └── jquery-3.4.1.min.js
│   │       └── layui-v2.6.3
│   │           ├── css
│   │           │   ├── layui.css
│   │           │   └── modules
│   │           │       ├── code.css
│   │           │       ├── laydate
│   │           │       │   └── default
│   │           │       │       └── laydate.css
│   │           │       └── layer
│   │           │           └── default
│   │           │               ├── icon-ext.png
│   │           │               ├── icon.png
│   │           │               ├── layer.css
│   │           │               ├── loading-0.gif
│   │           │               ├── loading-1.gif
│   │           │               └── loading-2.gif
│   │           ├── font
│   │           │   ├── iconfont.eot
│   │           │   ├── iconfont.svg
│   │           │   ├── iconfont.ttf
│   │           │   ├── iconfont.woff
│   │           │   └── iconfont.woff2
│   │           └── layui.js
│   ├── sys_manage
│   │   ├── admin.py
│   │   ├── apps.py
│   │   ├── __init__.py
│   │   ├── migrations
│   │   │   ├── 0001_initial.py
│   │   │   ├── 0002_alter_user_role_id.py
│   │   │   ├── 0003_role.py
│   │   │   ├── 0004_alter_role_sort.py
│   │   │   ├── 0005_user_role_des.py
│   │   │   ├── 0006_power_rolepower.py
│   │   │   ├── __init__.py
│   │   │   └── __pycache__
│   │   │       ├── 0001_initial.cpython-38.pyc
│   │   │       ├── 0002_alter_user_role_id.cpython-38.pyc
│   │   │       ├── 0003_role.cpython-38.pyc
│   │   │       ├── 0004_alter_role_sort.cpython-38.pyc
│   │   │       ├── 0005_user_role_des.cpython-38.pyc
│   │   │       ├── 0006_power_rolepower.cpython-38.pyc
│   │   │       └── __init__.cpython-38.pyc
│   │   ├── models.py
│   │   ├── __pycache__
│   │   │   ├── admin.cpython-38.pyc
│   │   │   ├── apps.cpython-38.pyc
│   │   │   ├── __init__.cpython-38.pyc
│   │   │   ├── models.cpython-38.pyc
│   │   │   ├── urls.cpython-38.pyc
│   │   │   └── views.cpython-38.pyc
│   │   ├── tests.py
│   │   ├── urls.py
│   │   └── views
│   │       ├── __init__.py
│   │       ├── log_manage.py
│   │       ├── power_manage.py
│   │       ├── __pycache__
│   │       │   ├── __init__.cpython-38.pyc
│   │       │   ├── log_manage.cpython-38.pyc
│   │       │   ├── power_manage.cpython-38.pyc
│   │       │   ├── role_manage.cpython-38.pyc
│   │       │   └── user_manage.cpython-38.pyc
│   │       ├── role_manage.py
│   │       └── user_manage.py
│   ├── templates
│   │   ├── errors
│   │   │   ├── 403.html
│   │   │   ├── 404.html
│   │   │   └── 500.html
│   │   ├── login
│   │   │   ├── home.html
│   │   │   ├── index.html
│   │   │   ├── login.html
│   │   │   ├── user_password.html
│   │   │   └── user_setting.html
│   │   └── sys_manage
│   │       ├── log_manage
│   │       │   └── log_main.html
│   │       ├── power_manage
│   │       │   ├── power_add.html
│   │       │   └── power_main.html
│   │       ├── role_manage
│   │       │   ├── role_add.html
│   │       │   ├── role_main.html
│   │       │   └── role_power.html
│   │       └── user_manage
│   │           ├── user_add.html
│   │           ├── user_main.html
│   │           └── user_role_edit.html
│   └── uwsgi.log
└── readme.txt

