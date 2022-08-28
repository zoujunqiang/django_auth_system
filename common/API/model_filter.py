# encoding:utf-8
"""
@file = model_filter
@author = zouju
@create_time = 2022-08-14- 12:54
"""
from django.db.models import Q


class ModelFilter:
    """
    orm多参数构造器
    """
    filter_field = {}
    filter_list = []

    type_exact = "exact"
    type_neq = "neq"
    type_greater = "greater"
    type_less = "less"
    type_iexact = "iexact"
    type_contains = "contains"
    type_between = "between"

    def __init__(self):
        self.filter_field = {}
        self.filter_list = []

    def exact(self, field_name, value):
        """
        准确查询字段
        :param field_name: 模型字段名称
        :param value: 值
        """
        if value and value != '':
            self.filter_field[field_name] = {"data": value, "type": self.type_exact}

    def neq(self, field_name, value):
        """
        不等于查询字段
        :param field_name: 模型字段名称
        :param value: 值
        """
        if value and value != '':
            self.filter_field[field_name] = {"data": value, "type": self.type_neq}

    def greater(self, field_name, value):
        """
        大于查询字段
        :param field_name: 模型字段名称
        :param value: 值
        """
        if value and value != '':
            self.filter_field[field_name] = {"data": value, "type": self.type_greater}

    def less(self, field_name, value):
        """
        小于查询字段
        :param field_name: 模型字段名称
        :param value: 值
        """
        if value and value != '':
            self.filter_field[field_name] = {"data": value, "type": self.type_less}

    def vague(self, field_name, value: str):
        """
        模糊查询字段
        :param field_name: 模型字段名称
        :param value: 值
        """
        if value and value != '':
            self.filter_field[field_name] = {"data": ('%' + value + '%'), "type": self.type_iexact}

    def left_vague(self, field_name, value: str):
        """
        左模糊查询字段
        :param field_name: 模型字段名称
        :param value: 值
        """
        if value and value != '':
            self.filter_field[field_name] = {"data": ('%' + value), "type": self.type_iexact}

    def right_vague(self, field_name, value: str):
        """
        左模糊查询字段
        :param field_name: 模型字段名称
        :param value: 值
        """
        if value and value != '':
            self.filter_field[field_name] = {"data": (value + '%'), "type": self.type_iexact}

    def contains(self, field_name, value: str):
        """
        包含查询字段
        :param field_name: 模型字段名称
        :param value: 值
        """
        if value and value != '':
            self.filter_field[field_name] = {"data": value, "type": self.type_contains}

    def between(self, field_name, value1, value2):
        """
        范围查询字段
        :param field_name: 模型字段名称
        :param value: 值
        """
        if value1 and value2 and value1 != '' and value2 != '':
            self.filter_field[field_name] = {"data": [value1, value2], "type": self.type_between}

    def get_filter(self, model):
        """
        获取过滤条件
        :param model: 模型字段名称
        """
        for k, v in self.filter_field.items():
            if v.get("type") == self.type_iexact:
                self.filter_list.append(getattr(model, k).like(v.get("data")))
            if v.get("type") == self.type_contains:
                self.filter_list.append(getattr(model, k).contains(v.get("data")))
            if v.get("type") == self.type_exact:
                self.filter_list.append(getattr(model, k) == v.get("data"))
            if v.get("type") == self.type_neq:
                self.filter_list.append(getattr(model, k) != v.get("data"))
            if v.get("type") == self.type_greater:
                self.filter_list.append(getattr(model, k) > v.get("data"))
            if v.get("type") == self.type_less:
                self.filter_list.append(getattr(model, k) < v.get("data"))
            if v.get("type") == self.type_between:
                self.filter_list.append(getattr(model, k).between(v.get("data")[0], v.get("data")[1]))
        return Q(*self.filter_list)
