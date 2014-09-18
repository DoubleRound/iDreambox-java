<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>

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
<link href="${pageContext.request.contextPath}/main/dist/css/main-css.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="${pageContext.request.contextPath}/main/dist/js/center_main_dialog_upload.js"></script>

</head>

<body>

	<!-- Wrap all page content here -->
	<div id="wrap">

		<!-- 引入头部导航栏 -->
		<jsp:include page="${pageContext.request.contextPath}/main/common/navbar.jsp"></jsp:include>

		<!-- Begin page content -->
		<div class="container">
			<div class="row row-offcanvas row-offcanvas-right">

				<!-- 引入左侧菜单栏 -->
				<jsp:include page="${pageContext.request.contextPath}/main/common/menu.jsp"></jsp:include>

				<!-- 判断是否登录，未登录引入轮播页面，登录则引入主内容显示页面 -->
				<s:set name="userSession" value="#session.org_idreambox_user_session.id"></s:set>
				<s:if test="#userSession == null">
					<!-- 引入主内容 -->
					<jsp:include page="${pageContext.request.contextPath}/main/common/center.jsp"></jsp:include>
				</s:if>
				<s:else>
					<!-- 引入主内容 -->
					<jsp:include page="${pageContext.request.contextPath}/main/common/center_main.jsp"></jsp:include>
				</s:else>

			</div>
			<!--/row-->
		</div>

	</div>

	<!-- 引入页脚 -->
	<jsp:include page="${pageContext.request.contextPath}/main/common/footer.jsp"></jsp:include>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="${pageContext.request.contextPath}/base/jquery/js/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/bootstrap/dist/js/bootstrap.js"></script>

</body>
</html>
