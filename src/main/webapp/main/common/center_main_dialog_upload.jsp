<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
 
</script>

<!-- 文件上传模态框 -->
<div class="modal fade" id="main-center-upload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- title -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">上传新文件</h4>
			</div>

			<!-- body -->
			<div class="modal-body">

				<!-- 进度条 -->
				<div class="progress progress-striped active">
					<div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%"></div>
				</div>

				<!-- form表单 -->
				<form id="main-center-form">
					<input type="file" id="truefile" name="file" onchange="paths.value = this.value" style="position:absolute; visibility:hidden ;z-index:1" />
					<div class="input-group">
						<input type="text" id="paths" class="form-control" value="F:\akka-2.3.2.zip" readonly="readonly">
						<div class="input-group-btn">
							<button type="button" class="btn btn-primary" onClick="truefile.click();" disabled="true" style="width: 100px;">选择文件</button>
						</div>
					</div>

					<div class="modal-footer">
						<button type="submit" class="btn btn-primary" disabled="true">上传</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
					
					正在上传，共1个文件，请稍后...
				</form>

			</div>
			<!-- /body -->

		</div>
	</div>
</div>