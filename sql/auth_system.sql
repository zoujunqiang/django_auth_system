INSERT INTO `sys_user` (`id`, `id_number`, `id_password`, `user_name`, `department`, `position`, `role_id`, `user_status`, `email`, `create_time`, `role_des`) VALUES (3, 'admin', 'pbkdf2_sha256$390000$GJVtb3oqScLoOCEk0UQq3v$QECN33IghfBLwPuCZiv7AidqRIaFa6NsQCXRN9nthi0=', 'admin', 'IT部', '系统管理员', 2, 1, 'admin@163.com', '2022-08-21 06:07:55.145119', '管理员');


INSERT INTO `web_logo` (`id`, `name`, `desc`, `type`, `url`, `parent_id`, `icon`, `sort`) VALUES (1, '首页', 'homeInfo-title', 0, '/home', 1, NULL, 1);
INSERT INTO `web_logo` (`id`, `name`, `desc`, `type`, `url`, `parent_id`, `icon`, `sort`) VALUES (2, '管理系统', 'logoInfo-title', 1, '', 2, 'static/images/logo1.png', 1);
INSERT INTO `web_logo` (`id`, `name`, `desc`, `type`, `url`, `parent_id`, `icon`, `sort`) VALUES (3, '后台管理系统', 'menuInfo-title', 2, '', 3, 'fa fa-address-book', 1);



INSERT INTO `sys_role` (`id`, `role_value`, `name`, `code`, `enable`, `remark`, `details`, `sort`, `create_time`, `update_time`) VALUES (1, 1, '普通用户', 'user', 1, '普通用户权限', NULL, NULL, '2022-08-16 23:14:27.974460', '2022-08-16 23:14:27.974460');
INSERT INTO `sys_role` (`id`, `role_value`, `name`, `code`, `enable`, `remark`, `details`, `sort`, `create_time`, `update_time`) VALUES (2, 2, '管理员', 'admin', 1, '系统所有权限', NULL, NULL, '2022-08-16 23:15:44.201017', '2022-08-16 23:15:44.201017');


INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (7, '系统管理', 0, '', NULL, '目录', 0, 'fa fa-gears', 1, 1, '2022-08-21 13:40:46.984340', '2022-08-21 13:40:46.984340');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (8, '用户管理', 1, '/user-manage', NULL, '菜单', 7, 'fa fa-user', 1, 1, '2022-08-21 13:41:42.752289', '2022-08-21 13:41:42.753292');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (9, '角色管理', 1, '/role-manage', NULL, '菜单', 7, 'fa fa-user-plus', 2, 1, '2022-08-21 13:42:15.823357', '2022-08-21 13:42:15.823357');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (10, '权限管理', 1, '/power-manage', NULL, '菜单', 7, 'fa fa-key', 3, 1, '2022-08-21 13:42:49.405794', '2022-08-21 13:42:49.405794');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (12, '日志管理', 1, '/log-manage', NULL, '菜单', 7, 'fa fa-bars', 4, 1, '2022-08-21 13:47:53.760215', '2022-08-21 13:47:53.760215');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (13, '用户新增', 2, 'user:add', NULL, '按钮', 8, '', 1, 1, '2022-08-21 14:21:40.243014', '2022-08-21 14:21:40.243014');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (14, '用户删除', 2, 'user:delete', NULL, '按钮', 8, '', 2, 1, '2022-08-22 00:02:22.548888', '2022-08-22 00:02:22.548888');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (15, '角色更新', 2, 'user:role-update', NULL, '按钮', 8, '', 3, 1, '2022-08-22 00:03:44.909199', '2022-08-22 00:03:44.909199');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (17, '禁用启用', 3, 'user:enable', NULL, '其他', 8, '', 4, 1, '2022-08-22 00:15:49.725357', '2022-08-22 00:15:49.725357');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (18, '角色新增', 2, 'role:add', NULL, '按钮', 9, '', 1, 1, '2022-08-22 00:23:52.949521', '2022-08-22 00:23:52.949521');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (19, '角色删除', 2, 'role:delete', NULL, '按钮', 9, '', 2, 1, '2022-08-22 00:24:32.076893', '2022-08-22 00:24:32.076893');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (20, '角色权限', 2, 'role:power', NULL, '按钮', 9, '', 3, 1, '2022-08-22 00:25:05.360926', '2022-08-22 00:25:05.361931');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (21, '禁用启用', 2, 'role:enable', NULL, '按钮', 9, '', 4, 1, '2022-08-22 00:25:31.890194', '2022-08-22 00:25:31.890194');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (22, '权限新增', 2, 'power:add', NULL, '按钮', 10, '', 1, 1, '2022-08-22 00:26:06.919411', '2022-08-22 00:26:06.919411');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (23, '权限删除', 2, 'power:delete', NULL, '按钮', 10, '', 2, 1, '2022-08-22 00:26:37.276269', '2022-08-22 00:26:37.276269');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (24, '禁用启用', 3, 'power:enable', NULL, '其他', 10, '', 3, 1, '2022-08-22 00:27:07.237696', '2022-08-22 00:27:07.237696');
INSERT INTO `sys_power` (`id`, `name`, `type`, `code`, `url`, `open_type`, `parent_id`, `icon`, `sort`, `enable`, `create_time`, `update_time`) VALUES (25, '日志删除', 2, 'log:delete', NULL, '按钮', 12, '', 1, 1, '2022-08-24 11:33:45.484369', '2022-08-24 11:33:45.484369');


INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (2, 2, 7, 0);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (3, 2, 8, 1);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (4, 2, 9, 1);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (5, 2, 10, 1);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (7, 2, 12, 1);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (8, 2, 13, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (9, 2, 14, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (10, 2, 15, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (12, 2, 17, 3);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (13, 2, 18, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (14, 2, 19, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (15, 2, 20, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (16, 2, 21, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (17, 2, 22, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (18, 2, 23, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (19, 2, 24, 3);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (50, 2, 25, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (62, 1, 7, 0);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (63, 1, 8, 1);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (64, 1, 9, 1);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (65, 1, 13, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (66, 1, 17, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (67, 1, 18, 2);
INSERT INTO `role_power` (`id`, `role_id`, `power_id`, `power_type`) VALUES (68, 1, 21, 2);
