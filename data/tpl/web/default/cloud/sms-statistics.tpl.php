<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<style>
.color-error {
	color: #f15333;
}
.color-warning {
	color: #f2af5a;
}
</style>
<div class="we7-page-title">短信管理</div>
<div class="sms-logs" ng-controller="smsLogs" ng-cloak>
	<div class="search-box we7-margin-bottom">
		<div class="input-group we7-margin-right nice-select" we7-date-range-picker ng-model="date" ng-change="getList(1)">
			<span class="current">{{date.startDate + '至' + date.endDate}}</span>
		</div>
		<select name="" class="we7-margin-right" ng-model="status" ng-change="getList(1)">
			<option value="">全部</option>
			<option value="1">发送成功</option>
			<option value="-1">发送失败</option>
		</select>
		<div class="search-form">
			<div class="input-group ">
				<input type="text" ng-model="mobile" class="form-control" placeholder="手机号">
				<span class="input-group-btn" ng-click="getList(1)"><button class="btn btn-default button"><i class="fa fa-search"></i></button></span>
			</div>
		</div>
	</div>
	<table class="table we7-table">
		<tr>
			<th>手机号</th>
			<th>时间</th>
			<th>短信内容</th>
			<th>发送状态</th>
			<!-- <th>日志</th> -->
		</tr>
		<tr ng-repeat="smslog in smslogs">
			<td>{{smslog.send_mobile}}</td>
			<td>{{smslog.createtime}}</td>
			<td>{{smslog.content}}</td>
			<td>
				<span ng-if="smslog.status == 0" class="color-green">发送成功</span>
				<span ng-if="smslog.status != 0" class="color-error">发送失败</span>
			</td>
			<!-- <td>{{smslog.log}}</td> -->
		</tr>
		<tr ng-if="smslogs | we7IsEmpty">
				<td colspan="100">
					<div class="text-center">暂无数据</div>
				</td>
			</tr>
	</table>
	<we7-page conf="page"></we7-page>
</div>

<script>
	require(['moment'], function() {
		angular.module('smsApp').value('config', {
			apiUrl: "<?php  echo url('cloud/sms-statistics')?>do=",
			smsSettingUrl: "<?php  echo url('cloud/sms/settingSign')?>",
			changeUrl: "<?php  echo url('cloud/sms/change_setting')?>",
			cloudSmsSigns: <?php  echo json_encode($cloud_sms_signs)?>,
			settingSmsSign: <?php  echo json_encode($setting_sms_sign)?>,
			userExpire: <?php  echo json_encode($user_expire)?>,
			accountSmsExpire: <?php  echo json_encode($account_sms_expire)?>,
			apiSmsExpire: <?php  echo json_encode($api_sms_expire)?>,
			smsInfo: <?php  echo json_encode($sms_info)?>,
		});
		angular.bootstrap($('.sms-logs'), ['smsApp']);
	})
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>