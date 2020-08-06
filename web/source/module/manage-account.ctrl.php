<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');

load()->model('module');
load()->model('account');
load()->model('user');
load()->model('cloud');
load()->model('cache');
load()->model('extension');

$dos = array('display', 'setting', 'shortcut', 'enable');
$do = !empty($_GPC['do']) ? $_GPC['do'] : 'display';

$modulelist = uni_modules();

if ('display' == $do) {
	$pageindex = max(1, intval($_GPC['page']));
	$pagesize = 30;

	$modules = $displayorder = array();
	if (!empty($modulelist)) {
		foreach ($modulelist as $name => $row) {
			if (!empty($row['issystem']) || APPLICATION_TYPE_TEMPLATES == $row['application_type']) {
				continue;
			}
			if (!empty($_GPC['keyword']) && !strexists($row['title'], $_GPC['keyword'])) {
				continue;
			}
			if (!empty($_GPC['letter']) && $row['title_initial'] != $_GPC['letter']) {
				continue;
			}
			$displayorder[$name] = $row['displayorder'];
			$modules[$name] = $row;
		}
	}
	array_multisort($displayorder, SORT_DESC, $modules);
	template('module/manage-account');
} elseif ('shortcut' == $do) {
	$status = intval($_GPC['shortcut']);
	$module_name = $_GPC['modulename'];

	$module_enabled = uni_account_module_shortcut_enabled($module_name, $status);
	if (is_error($module_enabled)) {
		itoast($module_enabled['message'], referer(), 'error');
	}
	itoast(($status ? '添加' : '取消') . '添加模块快捷操作成功！', referer(), 'success');
} elseif ('enable' == $do) {
	$module_name = $_GPC['modulename'];
	if (empty($modulelist[$module_name])) {
		itoast('抱歉，你操作的模块不能被访问！', '', '');
	}
	pdo_update('uni_account_modules', array(
		'enabled' => empty($_GPC['enabled']) ? STATUS_OFF : STATUS_ON,
	), array(
		'module' => $module_name,
		'uniacid' => $_W['uniacid'],
	));
	cache_build_module_info($module_name);
	itoast('模块操作成功！', referer(), 'success');
} elseif ('top' == $do) {
	$module_name = $_GPC['modulename'];
	$module = $modulelist[$module_name];
	if (empty($module)) {
		itoast('抱歉，你操作的模块不能被访问！', '', '');
	}
	$max_displayorder = (int) pdo_getcolumn('uni_account_modules', array('uniacid' => $_W['uniacid']), 'MAX(displayorder)');

	$module_profile = pdo_get('uni_account_modules', array('module' => $module_name, 'uniacid' => $_W['uniacid']));
	if (!empty($module_profile)) {
		pdo_update('uni_account_modules', array('displayorder' => ++$max_displayorder), array('id' => $module_profile['id'], 'uniacid' => $_W['uniacid']));
	} else {
		pdo_insert('uni_account_modules', array(
			'displayorder' => ++$max_displayorder,
			'module' => $module_name,
			'uniacid' => $_W['uniacid'],
			'enabled' => STATUS_ON,
			'shortcut' => STATUS_OFF,
		));
	}
	cache_build_module_info($module_name);
	cache_build_account_modules($_W['uniacid']);
	itoast('模块置顶成功', referer(), 'success');
} elseif ('setting' == $do) {
	$module_name = safe_gpc_string($_GPC['module_name']) ?: safe_gpc_string($_GPC['m']);
	$module = $_W['current_module'] = $modulelist[$module_name];
	if (empty($module)) {
		itoast('抱歉，你操作的模块不能被访问！', '', '');
	}

	if (!permission_check_account_user_module($module_name . '_settings', $module_name)) {
		itoast('您没有权限进行该操作', '', '');
	}

	define('IN_MODULE', $module_name);
		define('CRUMBS_NAV', 1);
	$config = empty($module['config']) ? array() : $module['config'];
	if ((2 == $module['settings']) && !is_file(IA_ROOT . "/addons/{$module['name']}/developer.cer")) {
		if (empty($_W['setting']['site']['key']) || empty($_W['setting']['site']['token'])) {
			itoast('站点未注册，请先注册站点。', url('cloud/profile'), 'info');
		}
		template('module/manage-account-setting');
		exit();
	}
	$obj = WeUtility::createModule($module['name']);
	$obj->settingsDisplay($config);
	exit();
} elseif ('setting_params' == $do) {
	$module_name = safe_gpc_string($_GPC['module_name']) ?: safe_gpc_string($_GPC['m']);
	$module = module_fetch($module_name);
	if (empty($module)) {
		iajax(-1, '抱歉，你操作的模块不能被访问！');
	}
	if (2 != $module['settings'] || is_file(IA_ROOT . "/addons/{$module['name']}/developer.cer")) {
		iajax(-1, '模块未开启云参数');
	}
	if (!permission_check_account_user_module($module_name . '_settings', $module_name)) {
		iajax(-1, '您没有权限进行该操作');
	}
	if (empty($_W['setting']['site']['key']) || empty($_W['setting']['site']['token'])) {
		iajax(-1, '站点未注册，请先注册站点。');
	}

	if (checksubmit('submit')) {
		$post = array(
			'setting' => safe_gpc_array($_GPC['setting']),
			'params' => safe_gpc_array($_GPC['params']),
		);
		if (is_array($post['params'])) {
			foreach ($post['params'] as $param) {
				if ('richtext' == $param['type'] && !empty($post['setting'][$param['name']])) {
					$post['setting'][$param['name']] = safe_gpc_html(htmlspecialchars_decode($post['setting'][$param['name']], ENT_QUOTES));
				}
			}
		}

		$result = cloud_module_setting_save($_W['uniacid'], $module['name'], $post['setting']);
		if (is_error($result)) {
			iajax(-1, $result['message']);
		}
		iajax(0, $result);
	}

	$setting = cloud_module_setting($_W['uniacid'], $module);

	if (is_error($setting)) {
		iajax(-1, $setting['message']);
	}
	$setting['setting'] = $module['config'];
	iajax(0, $setting);
}