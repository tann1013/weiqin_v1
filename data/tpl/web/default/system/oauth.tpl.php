<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<ul class="we7-page-tab">
	<li class="active">
	<a href="<?php  echo url('system/oauth')?>">全局借用权限设置</a>
	</li>
</ul>
<div class="alert we7-page-alert">
	<p><strong class="text-danger"><i class="wi wi-info-sign"></i>仅对非认证服务号生效.</strong></p>
</div>
<div id="js-system-oauth" ng-controller="systemOauthCtrl" ng-cloak>
	<table class="table we7-table table-hover table-form">
		<col width="180px " />
		<col />
		<col width="100px" />
		<tr>
			<th class="text-left" colspan="3">全局借用权限设置</th>
		</tr>
		<tr>
			<td class="text-left">
				选择公众号
			</td>
			<td class="text-left color-gray" ng-bind="oauthtitle"></td>
			<td >
				<div class="link-group"><a href="javascript:;" data-toggle="modal" data-target="#oauth">修改</a></div>
			</td>
		</tr>
		<tr>
			<td class="text-left">
				oAuth独立域名
			</td>
			<td class="text-left color-gray" ng-bind="originalHost"></td>
			<td >
				<div class="link-group"><a href="javascript:;" data-toggle="modal" data-target="#host">修改</a></div>
			</td>
		</tr>
	</table>
	<div class="modal fade" id="oauth" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="we7-modal-dialog modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					<div class="modal-title">选择公众号</div>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<select ng-model="oauthAccount" class="we7-select">
							<option value="0" ng-selected="oauthAccount == '' || oauthAccount == 0">不借用任何权限</option>
							<?php  if(is_array($oauth_accounts)) { foreach($oauth_accounts as $key => $account) { ?>
							<option value="<?php  echo $key?>"><?php  echo $account?></option>
							<?php  } } ?>
						</select>
						<span class="help-block">在微信公众号请求用户网页授权之前，开发者需要先到公众平台网站的【开发者中心】<b>网页服务</b>中配置授权回调域名.</span>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal" ng-click="saveOauth('oauth')">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="host" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="we7-modal-dialog modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					<div class="modal-title">oAuth独立域名</div>
				</div>
				<div class="modal-body">
					<div class="form-group we7-form">
						<input type="text"  name="host" ng-model="oauthHost" class="form-control" placeholder="oAuth独立域名">
						<span class="help-block">适用于您的微站或是活动有多个域名的情况下，由此域名做统一的oauth授权用。例如：http://www.baidu.com 注意：结尾没有/ </span>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" ng-click="saveOauth()">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal" ng-click="recover()">取消</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	angular.module('systemApp').value('config', {
		'oauthAccount' : "<?php  echo $oauth['oauth']['account'];?>",
		'oauthHost' : "<?php  echo $oauth['oauth']['host'];?>",
		'oauthAccounts' : <?php  echo json_encode($oauth_accounts)?>,
		'links': {
			'oauth_link': "<?php  echo url('system/oauth/save_oauth')?>",
		},
	});
	angular.bootstrap($('#js-system-oauth'), ['systemApp']);
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>