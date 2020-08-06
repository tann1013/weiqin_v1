<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<style>
.color-error {
	color: #f15333;
}
.color-warning {
	color: #f2af5a;
}
</style>
<div class="we7-page-title">购买短信包</div>
<div class="sms-trade" ng-controller="smsTrade" ng-cloak>
	<div class="we7-head-info">
		<div class="info">
			当前可用短信：<span  class="color-default">{{smsInfo.sms_count}}</span>条
		</div>
		<a href="//s.w7.cc/goods-7.html" class="btn btn-primary" target="_blank">购买短信</a>
	</div>
	<div class="search-box we7-margin-bottom">
		<select class="we7-margin-right" ng-model="status_order" ng-change="getTrade(1)">
			<option value="">订单状态</option>
			<option ng-repeat="(key, item) in orderText" ng-value="key">{{item}}</option>
		</select>
		<div class="search-form">
			<div class="input-group we7-margin-right nice-select"  we7-date-range-picker ng-model="date" ng-change="getTrade(1)">
				<span class="current">{{date.startDate + '至' + date.endDate}}</span>
			</div>
		</div>
	</div>
	<table class="table we7-table">
		<tr>
			<th>短信名称</th>
			<th>订单编号</th>
			<th>提交时间</th>
			<th>订单状态</th>
			<th>操作</th>
		</tr>
		<tr ng-repeat="smslog in smslogs">
			<td>{{smslog.title}}</td>
			<td>{{smslog.sn}}</td>
			<td>{{smslog.createtime}}</td>
			<td><span class="we7-circle" ng-class="smslog.show_pay_button ? 'bg-warning' : (smslog.order_status == 2 ? 'bg-green' : 'bg-error')"></span>{{smslog.order_status_text}}</td>
			<td>
				<div class="link-group">
					<a ng-href="{{smslog.order_pay_url}}" target="_blank" ng-show="smslog.show_pay_button">去支付</a>
					<a ng-href="{{smslog.order_detail_url}}" target="_blank" ng-show="!smslog.show_pay_button">订单详情</a>
				</div>
			</td>
		</tr>
		<tr ng-if="smslogs | we7IsEmpty">
			<td colspan="100">
				<div class="text-center">暂无数据</div>
			</td>
		</tr>
	</table>
	<we7-page conf="page1"></we7-page>
</div>
<script>
	require(['moment'], function() {
		angular.module('smsApp').value('config', {
			apiUrl: "<?php  echo url('cloud/sms-package')?>do=",
			smsSettingUrl: "<?php  echo url('cloud/sms/settingSign')?>",
			changeUrl: "<?php  echo url('cloud/sms/change_setting')?>",
			cloudSmsSigns: <?php  echo json_encode($cloud_sms_signs)?>,
			settingSmsSign: <?php  echo json_encode($setting_sms_sign)?>,
			userExpire: <?php  echo json_encode($user_expire)?>,
			accountSmsExpire: <?php  echo json_encode($account_sms_expire)?>,
			apiSmsExpire: <?php  echo json_encode($api_sms_expire)?>,
			smsInfo: <?php  echo json_encode($sms_info)?>,
		});
		angular.bootstrap($('.sms-trade'), ['smsApp']);
	})
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>