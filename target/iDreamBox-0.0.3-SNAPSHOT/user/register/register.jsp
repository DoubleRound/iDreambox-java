<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>

<title>iDreamBox</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="register for iDreamBox">
<meta name="author" content="dr">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/base/logo/6.jpg">

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/dist/css/bootstrap.css" type="text/css" />

<!-- Custom styles for this template -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/user/dist/css/signin.css" type="text/css" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
<!-- jQuery-->
<script src="${pageContext.request.contextPath}/base/jquery/js/jquery-1.10.2.min.js"></script>

<!-- jQuery form-->
<script src="${pageContext.request.contextPath}/base/jquery/js/jquery.form.js"></script>

<!-- jQuery-ui css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/base/jquery/css/jquery-ui.css">

<!-- jQuery-ui js -->
<script src="${pageContext.request.contextPath}/base/jquery/js/jquery-ui.js"></script>

<!-- 引入基本工具类 -->
<script src="${pageContext.request.contextPath}/base/dist/js/base_support.js"></script>

<script>

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
				$(this).empty();//关闭时清空
			}
		});

	});
	
	function toLogin() {
		//注册完成后跳转到登录界面
		top.location="${pageContext.request.contextPath}/userAction!loginBefore.action";
	}

	/**
	*jQuery form做的AJAX
	*
	*/
	$(function() {
		var options = {
			url : '${pageContext.request.contextPath}/userAction!register.action',
			success : function(jsonResult) {
				var obj = jQuery.parseJSON(jsonResult);
				if (obj.success) {
					//清空表单
					$(':input', '#user_reg_regForm').not(
							':button, :submit, :reset, :hidden').val('')
							.removeAttr('checked').removeAttr('selected');
					
					$("#dialog").dialog("option", {
						title : "恭喜!"
					}); // 设置参数 
					
					$("#dialog").append(userSupport(obj.msg) + "</br>我们将在10秒钟之后为您跳转到登录页面,");
					$("#dialog").append("您也可以<a href=\"${pageContext.request.contextPath}/userAction!loginBefore.action\"><font color=\"red\">立即跳转</font></a>");
					setTimeout('toLogin()',10000); //10秒后执行toLogin(),只执行一次
				} else {
					$("#dialog").dialog("option", {
						title : "警告!"
					}); // 设置参数 
					$("#dialog").append("<font color=\"red\">" + userSupport(obj.msg) + "</font>");
				}

				$("#dialog").dialog("open");
			}
		};
		// 将options传给ajaxForm
		$('#user_reg_regForm').ajaxForm(options);
	});
</script>

</head>

<body>

	<!-- container -->
	<div class="container">
		<form class="form-signin" id="user_reg_regForm" role="form" method="post">
			<h2 class="form-signin-heading">加入iDreamBox</h2>
			<font color="red"><span id="result"></span></font>
			<input type="text" name="user.name" class="form-control" placeholder="昵称" required autofocus> 
			<input type="email" name="user.email" class="form-control" placeholder="邮箱" required> 
			<input type="password" name="user.password" class="form-control" placeholder="密码" required> 
			<input type="password" name="user.repassword" class="form-control" placeholder="确认密码" required>
			<div class="input-group">
				<input type="text" name="user.captcha" class="form-control" placeholder="验证码" required>
				<div class="input-group-btn">
					<img src="/randPic.action" onclick="changeValidateCode(this)" title="点击图片刷新验证码">
				</div>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
		</form>
	</div>
	<!-- /container -->

	<div id="dialog"></div>

</body>
</html>
