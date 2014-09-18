<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 离线下载模态框 -->
<div class="modal fade" id="main-center-offline" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" keyboard="false">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- title -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">离线下载</h4>
			</div>

			<!-- body -->
			<div class="modal-body">
				<div class="navbar navbar-default">
					<div class="btn-group">
						<button class="btn btn-primary">新建BT任务</button>
					</div>
					<div class="btn-group">
						<button class="btn btn-primary">新建链接任务</button>
					</div>
				</div>
				
				资源载入中...
				
			</div>
			<!-- /body -->

		</div>
	</div>
</div>