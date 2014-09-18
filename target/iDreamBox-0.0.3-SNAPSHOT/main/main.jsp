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
<link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

<title>iDreamBox for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/dist/css/bootstrap.css" type="text/css" />

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/main/dist/css/main-css.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
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

				<div class="col-xs-12 col-sm-9">

					<p class="pull-right visible-xs">
						<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
					</p>
					<div class="jumbotron">
						<h1>Hello, world!</h1>
						<p>This is an example to show the potential of an offcanvas layout pattern in Bootstrap. Try some responsive-range viewport sizes to see it in action.</p>
					</div>
					<div class="row">
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
					</div>
					<!--/row-->

				</div>
				<!--/span-->

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
	<script src="${pageContext.request.contextPath}/bootstrap/dist/js/bootstrap.min.js"></script>

</body>
</html>
