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
		<div class="btn-group">
			<button class="btn btn-primary" data-target="#main-center-upload" data-toggle="modal">上传文件</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-info" data-target="#main-center-offline" data-toggle="modal">离线下载</button>
		</div>
	</div>

	<ul class="nav nav-tabs" id="myTab">
		<li class="active"><a href="#center-disk">全部文件</a>
		</li>
		<li><a href="#center-mpic">图片</a>
		</li>
		<li><a href="#center-mdoc">文档</a>
		</li>
		<li><a href="#center-mvideo">视频</a>
		</li>
		<li><a href="#center-mbt">种子</a>
		</li>
		<li><a href="#center-mmusic">音乐</a>
		</li>
		<li><a href="#center-moth">其他</a>
		</li>
		<li><a href="#center-recycle">回收站</a>
		</li>
	</ul>

	<div class="tab-content">
		<div class="tab-pane active" id="center-disk">
			<table class="table table-striped">
				<thead>
					<tr>
						<th style="width: 8%;">序号</th>
						<th>文件名称</th>
						<th style="width: 10%;">文件大小</th>
						<th style="width: 16%;">修改日期</th>
						<th style="width: 14%;">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Mark</td>
						<td>66M</td>
						<td>2014-3-9 13:58</td>
						<td><a href="#" class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-floppy-save"></span>下载 </a> <a href="#" class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-trash"></span>删除 </a>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Jacob</td>
						<td>18M</td>
						<td>2014-3-9 13:58</td>
						<td><a class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-floppy-save"></span>下载 </a> <a class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-trash"></span>删除 </a>
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td>Larry</td>
						<td>73M</td>
						<td>2014-3-9 13:58</td>
						<td><a class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-floppy-save"></span>下载 </a> <a class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-trash"></span>删除 </a>
						</td>
					</tr>
					<tr>
						<td>4</td>
						<td>Larry</td>
						<td>18M</td>
						<td>2014-3-9 13:58</td>
						<td><a class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-floppy-save"></span>下载 </a> <a class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-trash"></span>删除 </a>
						</td>
					</tr>
					<tr>
						<td>5</td>
						<td>Larry</td>
						<td>195M</td>
						<td>2014-3-9 13:58</td>
						<td><a class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-floppy-save"></span>下载 </a> <a class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-trash"></span>删除 </a>
						</td>
					</tr>
					<tr>
						<td>6</td>
						<td>Larry</td>
						<td>80M</td>
						<td>2014-3-9 13:58</td>
						<td><a class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-floppy-save"></span>下载 </a> <a class="btn btn-default btn-xs" type="button"> <span class="glyphicon glyphicon-trash"></span>删除 </a>
						</td>
					</tr>
				</tbody>
			</table>

			<ul class="pagination">
				<li class="disabled"><a href="#">«</a></li>
				<li class="active"><a href="#">1 <span class="sr-only">(current)</span> </a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">»</a></li>
			</ul>

		</div>
		<div class="tab-pane" id="center-mpic">图片...</div>
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
