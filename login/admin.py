from django.contrib import admin

from .models import Logo, Log


# Register your models here.


class LogoAdmin(admin.ModelAdmin):
    # list_display ������ʾ�ֶ�
    list_display = ['id', 'name', 'desc', 'type', 'url', 'parent_id', 'icon', 'sort']

    # ���ñ༭ҳ����ʾ�ֶ�
    fields = ('name', 'desc', 'type', 'url', 'parent_id', 'icon', 'sort')

    # ���ֶ�����Ϊֻ��
    # readonly_fields = ['createtime']

    # �ұ���ӹ�������������һ��Ԫ����б�
    list_filter = ['id', 'name', 'sort']

    # �����ֶ�
    search_fields = ['id', 'name', 'desc', 'type', 'url', 'parent_id', 'icon', 'sort']

    # ����
    ordering = ['id']

    # ��ҳ
    list_per_page = 30

    # # ʱ��ֲ�
    # date_hierarchy = 'enter_time'

    # ��������
    list_display_links = ('id', 'name')


class LogAdmin(admin.ModelAdmin):
    # list_display ������ʾ�ֶ�
    list_display = ['id', 'method', 'uid', 'url', 'desc', 'ip', 'success', 'user_agent', 'create_time']

    # ���ñ༭ҳ����ʾ�ֶ�
    fields = ('method', 'uid', 'url', 'desc', 'ip', 'success', 'user_agent')

    # ���ֶ�����Ϊֻ��
    readonly_fields = ['create_time']

    # �ұ���ӹ�������������һ��Ԫ����б�
    list_filter = ['uid', 'method', 'url']

    # �����ֶ�
    search_fields = ['id', 'method', 'uid', 'url', 'desc', 'ip', 'success', 'user_agent', 'create_time']

    # ����
    ordering = ['id']

    # ��ҳ
    list_per_page = 30

    # # ʱ��ֲ�
    # date_hierarchy = 'enter_time'

    # ��������
    list_display_links = ('id', 'method', 'uid', 'url', 'desc', 'ip', 'success', 'user_agent')


admin.site.register(Logo, LogoAdmin)
admin.site.register(Log, LogAdmin)