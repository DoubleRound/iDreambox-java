<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/base/logo/6.jpg">

<title>iDreamBox</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/dist/css/bootstrap.css" type="text/css" />

<!-- Custom styles for this template -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/user/dist/css/signin.css" type="text/css" />

<!-- jQuery-ui css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/base/jquery/css/jquery-ui.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->


<!-- jQuery-->
<script src="${pageContext.request.contextPath}/base/jquery/js/jquery-1.10.2.min.js"></script>

<!-- jQuery form-->
<script src="${pageContext.request.contextPath}/base/jquery/js/jquery.form.js"></script>

<!-- jQuery-ui js -->
<script src="${pageContext.request.contextPath}/base/jquery/js/jquery-ui.js"></script>

<script type="text/javascript">
	/**
	 * jQuery弹出警告框
	 *
	 */
	$(function() {
		$("#dialog").dialog({
			autoOpen : false,
			show : {
				effect : "blind",
				duration : 10
			},
			hide : {
				effect : "explode",
				/**
				 * 延时300毫秒，数越大关闭弹出框的动作越慢，但同时会造成
				 *一个bug，点完关闭，立即点注册，会什么都不显示,因为dialog并未完全关闭，但又打开了一个
				 */
				duration : 300
			}
		}, {
			draggable : false
		}, {
			resizable : false
		}, {
			close : function(event, ui) {
				//$(this).dialog("remove"); // 关闭时销毁 
				$(this).empty();// 关闭时清空
			}
		});

	});

	/**
	 *jQuery form做的AJAX
	 *
	 */
	$(function() {
		var options = {
			url : '${pageContext.request.contextPath}/userAction!login.action',
			success : function(jsonResult) {
				var obj = jQuery.parseJSON(jsonResult);
				if (obj.success) {
					//清空表单
					$(':input', '#user_login_loginForm').not(
							':button, :submit, :reset, :hidden').val('')
							.removeAttr('checked').removeAttr('selected');
					//注册完成后跳转到用户主页界面
					top.location = "${pageContext.request.contextPath}/index.action";
				} else {
					$("#dialog").dialog("option", {
						title : "警告!"
					}); // 设置参数 
					$("#dialog").append(
							"<font color=\"red\">" + obj.msg + "</font>");
					$("#dialog").dialog("open");
				}
			}
		};
		// 将options传给ajaxForm
		$('#user_login_loginForm').ajaxForm(options);
	});
</script>

</head>

<body>

	<div class="container">
		<form class="form-signin" id="user_login_loginForm" role="form">
			<h2 class="form-signin-heading">iDreamBox</h2>
			<input type="email" name="user.email" class="form-control" placeholder="Email address" required autofocus>
			<input type="password" name="user.password" class="form-control" placeholder="Password" required>
			<label class="checkbox"> <input type="checkbox" name="user.autoLogon" value="remember-me">一周内自动登录</label>
			<button class="btn btn-lg btn-primary btn-block" type="submit">进入</button>
		</form>
	</div>

	<div id="dialog"></div>

</body>
</html>
