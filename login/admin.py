from django.contrib import admin

from .models import Logo, Log


# Register your models here.


class LogoAdmin(admin.ModelAdmin):
    # list_display 设置显示字段
    list_display = ['id', 'name', 'desc', 'type', 'url', 'parent_id', 'icon', 'sort']

    # 设置编辑页面显示字段
    fields = ('name', 'desc', 'type', 'url', 'parent_id', 'icon', 'sort')

    # 将字段设置为只读
    # readonly_fields = ['createtime']

    # 右边添加过滤器，必须是一个元组或列表
    list_filter = ['id', 'name', 'sort']

    # 搜索字段
    search_fields = ['id', 'name', 'desc', 'type', 'url', 'parent_id', 'icon', 'sort']

    # 排序
    ordering = ['id']

    # 分页
    list_per_page = 30

    # # 时间分层
    # date_hierarchy = 'enter_time'

    # 设置链接
    list_display_links = ('id', 'name')


class LogAdmin(admin.ModelAdmin):
    # list_display 设置显示字段
    list_display = ['id', 'method', 'uid', 'url', 'desc', 'ip', 'success', 'user_agent', 'create_time']

    # 设置编辑页面显示字段
    fields = ('method', 'uid', 'url', 'desc', 'ip', 'success', 'user_agent')

    # 将字段设置为只读
    readonly_fields = ['create_time']

    # 右边添加过滤器，必须是一个元组或列表
    list_filter = ['uid', 'method', 'url']

    # 搜索字段
    search_fields = ['id', 'method', 'uid', 'url', 'desc', 'ip', 'success', 'user_agent', 'create_time']

    # 排序
    ordering = ['id']

    # 分页
    list_per_page = 30

    # # 时间分层
    # date_hierarchy = 'enter_time'

    # 设置链接
    list_display_links = ('id', 'method', 'uid', 'url', 'desc', 'ip', 'success', 'user_agent')


admin.site.register(Logo, LogoAdmin)
admin.site.register(Log, LogAdmin)