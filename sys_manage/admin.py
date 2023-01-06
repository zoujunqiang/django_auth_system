# encoding:utf-8
from django.contrib import admin

from .models import User, Role, Power, RolePower

# 设置adminsite 基本信息
# admin.site.site_title = '系统管理'
admin.site.site_header = '后台管理系统'
admin.site.index_title = '系统管理'


# Register your models here.


class UserAdmin(admin.ModelAdmin):
    # 显示相应字段
    list_display = ['id_number', 'user_name', 'department', 'position', 'role_id', 'role_des', 'user_status', 'email',
                    'create_time']
    # 编辑页面显示
    fields = (
    'id_number', 'id_password', 'user_name', 'department', 'position', 'role_id', 'role_des', 'user_status', 'email',
    'create_time')

    # 将字段设置为只读
    readonly_fields = ['role_id', 'role_des', 'user_status', 'create_time']

    # 右边添加过滤器，必须是一个元组或列表
    list_filter = ['id_number', 'user_name', 'department', 'role_id']

    # 搜索字段
    search_fields = ['id_number', 'id_password', 'user_name', 'department', 'position', 'role_id', 'role_des',
                     'user_status', 'email', 'create_time']
    # 排序
    ordering = ['id_number']
    # 分页
    list_per_page = 30
    # 时间分层, 显示搜索快捷按钮
    date_hierarchy = 'create_time'
    # 设置链接, 对应字段可以鼠标点击
    list_display_links = ('id_number', 'user_name', 'role_id')


class RoleAdmin(admin.ModelAdmin):
    # 显示相应字段
    list_display = ['role_value', 'name', 'code', 'enable', 'remark', 'details', 'sort', 'create_time', 'update_time']

    # 编辑页面显示
    fields = ('role_value', 'name', 'code', 'enable', 'remark', 'details', 'sort', 'create_time')

    # 将字段设置为只读
    readonly_fields = ['create_time']

    # 右边添加过滤器，必须是一个元组或列表
    list_filter = ['name', 'code', 'enable']

    # 搜索字段
    search_fields = ['role_value', 'name', 'code', 'enable', 'remark', 'details', 'sort', 'create_time', 'update_time']

    # 排序
    ordering = ['role_value']

    # 分页
    list_per_page = 30

    # 时间分层, 显示搜索快捷按钮
    date_hierarchy = 'create_time'

    # 设置链接, 对应字段可以鼠标点击
    list_display_links = ('role_value', 'name', 'code', 'enable', 'remark', 'details')


class PowerAdmin(admin.ModelAdmin):
    # 显示相应字段
    list_display = ['name', 'type', 'code', 'url', 'open_type', 'parent_id', 'icon', 'sort', 'enable', 'create_time',
                    'update_time']

    # 编辑页面显示
    fields = ('name', 'type', 'code', 'url', 'open_type', 'parent_id', 'icon', 'sort', 'enable')

    # 将字段设置为只读
    readonly_fields = ['create_time']

    # 右边添加过滤器，必须是一个元组或列表
    list_filter = ['name', 'code', 'enable']

    # 搜索字段
    search_fields = ['name', 'type', 'code', 'url', 'open_type', 'parent_id', 'icon', 'sort', 'enable', 'create_time',
                     'update_time']

    # 排序
    ordering = ['name']

    # 分页
    list_per_page = 30

    # 时间分层, 显示搜索快捷按钮
    date_hierarchy = 'create_time'

    # 设置链接, 对应字段可以鼠标点击
    list_display_links = ('name', 'type', 'code', 'url', 'open_type', 'parent_id', 'icon', 'sort')


class RolePowerAdmin(admin.ModelAdmin):
    # 显示相应字段
    list_display = ['role_id', 'power_id', 'power_type']

    # 编辑页面显示
    fields = ('role_id', 'power_id', 'power_type')

    # 将字段设置为只读
    # readonly_fields = ['create_time']

    # 右边添加过滤器，必须是一个元组或列表
    list_filter = ['role_id', 'power_id', 'power_type']

    # 搜索字段
    search_fields = ['role_id', 'power_id', 'power_type']

    # 排序
    ordering = ['role_id']

    # 分页
    list_per_page = 30

    # 时间分层, 显示搜索快捷按钮 must be a DateField or DateTimeField
    # date_hierarchy = 'role_id'

    # 设置链接, 对应字段可以鼠标点击
    list_display_links = ('role_id', 'power_id', 'power_type')


admin.site.register(User, UserAdmin)
admin.site.register(Role, RoleAdmin)
admin.site.register(Power, PowerAdmin)
admin.site.register(RolePower, RolePowerAdmin)
