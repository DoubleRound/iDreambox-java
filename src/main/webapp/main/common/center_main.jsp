<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	/**
	 * 全部文件
	 */
	function disk() {
		$('#myTab a[href="#center-disk"]').tab('show'); // Select tab by name
		var disk = $("#menu-disk");
		activeThis(disk);
	}

	/**
	 * 图片
	 */
	function mpic() {
		$('#myTab a[href="#center-mpic"]').tab('show'); // Select tab by name
		var mpic = $("#menu-mpic");
		activeThis(mpic);
	}

	/**
	 * 文档
	 */
	function mdoc() {
		$('#myTab a[href="#center-mdoc"]').tab('show'); // Select tab by name
		var mdoc = $("#menu-mdoc");
		activeThis(mdoc);
	}

	/**
	 * 视频
	 */
	function mvideo() {
		$('#myTab a[href="#center-mvideo"]').tab('show'); // Select tab by name
		var mvideo = $("#menu-mvideo");
		activeThis(mvideo);
	}

	/**
	 * 种子
	 */
	function mbt() {
		$('#myTab a[href="#center-mbt"]').tab('show'); // Select tab by name
		var mbt = $("#menu-mbt");
		activeThis(mbt);
	}

	/**
	 * 音乐
	 */
	function mmusic() {
		$('#myTab a[href="#center-mmusic"]').tab('show'); // Select tab by name
		var mmusic = $("#menu-mmusic");
		activeThis(mmusic);
	}

	/**
	 * 其他
	 */
	function moth() {
		$('#myTab a[href="#center-moth"]').tab('show'); // Select tab by name
		var moth = $("#menu-moth");
		activeThis(moth);
	}

	/**
	 * 回收站
	 */
	function recycle() {
		$('#myTab a[href="#center-recycle"]').tab('show'); // Select tab by name
		var recycle = $("#menu-recycle");
		activeThis(recycle);
	}

	/**
	 * 将当前选中menu置为选中状态
	 */
	function activeThis(obj) {

		var disk = $("#menu-disk");
		var mpic = $("#menu-mpic");
		var mdoc = $("#menu-mdoc");
		var mvideo = $("#menu-mvideo");
		var mbt = $("#menu-mbt");
		var mmusic = $("#menu-mmusic");
		var moth = $("#menu-moth");
		var recycle = $("#menu-recycle");

		if (disk.hasClass("active")) {
			disk.removeClass("active");
		} else if (mpic.hasClass("active")) {
			mpic.removeClass("active");
		} else if (mdoc.hasClass("active")) {
			mdoc.removeClass("active");
		} else if (mvideo.hasClass("active")) {
			mvideo.removeClass("active");
		} else if (mbt.hasClass("active")) {
			mbt.removeClass("active");
		} else if (mmusic.hasClass("active")) {
			mmusic.removeClass("active");
		} else if (moth.hasClass("active")) {
			moth.removeClass("active");
		} else if (recycle.hasClass("active")) {
			recycle.removeClass("active");
		}

		obj.addClass("active");
	}
</script>

<div class="col-xs-12 col-sm-9">

	<div class="navbar navbar-default">
		
		<!-- 右下上部按钮组 -->
		<div class="col-lg-6">
			<div class="btn-group">
				<button class="btn btn-primary" data-target="#main-center-upload" data-toggle="modal">上传文件</button>
			</div>
			<div class="btn-group">
				<button class="btn btn-info" data-target="#main-center-offline" data-toggle="modal">离线下载</button>
			</div>
			<div class="btn-group">
				<button class="btn btn-success" data-target="#main-center-adddisk" data-toggle="modal">绑定网盘</button>
			</div>
		</div>
		
		<!-- 右下上部搜索框 -->
		<div class="col-lg-6">
			<div class="input-group" style="padding-top: 7px;">
				<input type="text" class="form-control">
				<div class="input-group-btn">
					<button type="button" class="btn btn-default" tabindex="-1">搜索</button>
					<button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" tabindex="-1">
						<span class="caret"></span> <span class="sr-only">Toggle Dropdown</span>
					</button>
					<ul class="dropdown-menu pull-right" role="menu">
						<li><a href="#">所有</a></li>
						<li><a href="#">文档</a></li>
						<li><a href="#">图片</a></li>
						<li><a href="#">视频</a></li>
						<li><a href="#">音乐</a></li>
						<li><a href="#">BT种子</a></li>
						<li><a href="#">回收站</a></li>
					</ul>
				</div>
			</div>
		</div>
		
	</div>

	<ul class="nav nav-tabs" id="myTab">
		<li class="active"><a href="#center-disk">全部文件</a></li>
		<li><a href="#center-mpic">图片</a></li>
		<li><a href="#center-mdoc">文档</a></li>
		<li><a href="#center-mvideo">视频</a></li>
		<li><a href="#center-mbt">种子</a></li>
		<li><a href="#center-mmusic">音乐</a></li>
		<li><a href="#center-moth">其他</a></li>
		<li><a href="#center-recycle">回收站</a></li>
	</ul>

	<div class="tab-content">
		<div class="tab-pane active" id="center-disk">
			<!-- 引入网盘列表 -->
			<jsp:include page="${pageContext.request.contextPath}/main/common/disk_list.jsp" />
		</div>

		<div class="tab-pane" id="center-mpic">
			<!-- 引入文件列表 -->
			<jsp:include page="${pageContext.request.contextPath}/main/common/file_list.jsp" />
		</div>
		<div class="tab-pane" id="center-mdoc">文档...</div>
		<div class="tab-pane" id="center-mvideo">视频...</div>
		<div class="tab-pane" id="center-mbt">种子...</div>
		<div class="tab-pane" id="center-mmusic">音乐...</div>
		<div class="tab-pane" id="center-moth">其他...</div>
		<div class="tab-pane" id="center-recycle">回收站...</div>
	</div>

</div>

<!-- 引入文件上传模态框 -->
<jsp:include page="${pageContext.request.contextPath}/main/common/center_main_dialog_upload.jsp"></jsp:include>

<!-- 引入离线下载模态框 -->
<jsp:include page="${pageContext.request.contextPath}/main/common/center_main_dialog_offline.jsp"></jsp:include>

<!-- 引入绑定网盘模态框 -->
<jsp:include page="${pageContext.request.contextPath}/main/common/center_main_dialog_adddisk.jsp"></jsp:include>