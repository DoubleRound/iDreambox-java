<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 离线下载模态框 -->
<div class="modal fade" id="main-center-adddisk" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" keyboard="false">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- title -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">请选择您要绑定的网盘：</h4>
			</div>

			<!-- body -->
			<div class="modal-body">
				<div class="navbar navbar-default">
					<div class="btn-group">
						<button class="btn btn-default">百度网盘</button>
					</div>
					<div class="btn-group">
						<button class="btn btn-success">360网盘</button>
					</div>
					<div class="btn-group">
						<button class="btn btn-info">dropbox</button>
					</div>
					<div class="btn-group">
						<button class="btn btn-primary">115网盘</button>
					</div>
					<div class="btn-group">
						<button class="btn btn-warning">金山快盘</button>
					</div>
					<div class="btn-group">
						<button class="btn btn-danger">新浪微博</button>
					</div>
				</div>
			</div>
			<!-- /body -->

		</div>
	</div>
</div>