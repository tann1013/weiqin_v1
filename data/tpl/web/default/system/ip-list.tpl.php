<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<!--ip白名单-->
<div class="iplist" ng-controller="ipWhiteListCtrl" ng-cloak>
	<div class="search-box we7-margin-bottom">
		<form action="<?php  url('system/ipwhitelist')?>" method="post" class="search-form">
			<div class="input-group" style="width: 400px;">
				<input type="text" placeholder="输入要搜索的ip地址" class="form-control" name="keyword" value="<?php  echo $keyword;?>"/>
			<span class="input-group-btn">
				<button class="btn btn-default">
					<i class="wi wi-search"></i>
				</button>
			</span>
			</div>
		</form>
		<a href="#" class="btn btn-primary we7-padding-horizontal" data-toggle="modal" data-target="#myModalIp">添加白名单</a>
	</div>
	<table class="table we7-table table-hover vertical-middle" ng-cloak>
		<col />
		<col />
		<col />
		<tr>
			<th>IP地址</th>
			<th>是否生效</th>
			<th class="text-right">操作</th>
		</tr>
		<tr ng-repeat="list in lists">
			<td>
				{{list.ip}}
				<!--<span class="color-gray we7-margin-left">中国 山西 太原 联通</span>-->
			</td>
			<td>
				<div class="we7-form">
					<input class='we7-toggle' type="checkbox" name='check-3' checked='checked' ng-if="list.status==1" ng-click="changeStatus(list.ip)"/>
					<input class='we7-toggle' type="checkbox" name='check-3' ng-if="list.status==0" ng-click="changeStatus(list.ip)"/>
				</div>
			</td>
			<td>
				<div class="link-group">
					<a href="{{links.delete_link_ip}}ip={{list.ip}}" class="del">删除</a>
				</div>
			</td>
		</tr>
		<tr ng-if="lists | we7IsEmpty">
			<td colspan="100">
				<div class="we7-empty-block">暂无IP白名单</div>
			</td>
		</tr>
	</table>
	<div class="modal fade modal-new" id="myModalIp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel6">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel6">添加白名单</h4>
				</div>
				<div class="modal-body we7-form we7-padding">
					<div class="alert alert-info we7-page-alert">
						<p class="color-gray">添加局域网并保持开启状态的IP可访问系统，外网IP不可访问</p>
						<p class="color-gray">输入有效IP地址, <a href="javascript:;" class="color-default js-show-ip">如何查看？</a></p>
					</div>
					<textarea ng-model="ips" name="ips" id="addips" rows="5" placeholder="多个IP地址用回车隔开" style="resize: none;" class="form-control" ></textarea>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" ng-click="saveIp()">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!--end ip白名单-->
<script type="text/javascript">
	$('.js-show-ip').popover({
		html: true,
		trigger: 'hover',
		placement: 'bottom',
		content: '<div class="cmd-ip"><p class="font-lg font-weight-600 color-text">如何查看局域网IP</p><p>1."win+R"打开运行，输入"cmd"，点击确定</p><p>2.直接输入"ipconfig"，点击回车，在<span class="color-red">无线网络链接下的IPv4地址即为内网IP</span></p></div>'
	})
	angular.module('systemApp').value('config', {
		'lists': <?php echo !empty($lists) ? json_encode($lists) : 'null'?>,
		'links' : {
			'add_link_ips': "<?php  echo url('system/ipwhitelist/add')?>",
			'change_status': "<?php  echo url('system/ipwhitelist/change_status')?>",
			'delete_link_ip': "<?php  echo url('system/ipwhitelist/delete')?>",
		},
	});
	angular.bootstrap($('.iplist'), ['systemApp']);
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>