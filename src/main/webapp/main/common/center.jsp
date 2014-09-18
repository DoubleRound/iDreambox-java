<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-xs-12 col-sm-9">

	<div id="carousel-example-captions" class="carousel slide" data-ride="carousel">

		<!-- 轮播的三个白色小圆点 -->
		<ol class="carousel-indicators">
			<li class="active" data-target="#carousel-example-captions" data-slide-to="0"></li>
			<li class="" data-target="#carousel-example-captions" data-slide-to="1"></li>
			<li class="" data-target="#carousel-example-captions" data-slide-to="2"></li>
		</ol>

		<!-- 主轮播 -->
		<div class="carousel-inner">

			<!-- 第一张轮播 -->
			<div class="item active">
				<img src="${pageContext.request.contextPath}/main/dist/images/bg-4.jpg" data-src="" alt="900x500">
				<div class="carousel-caption img-rounded">
					<h3>First slide label</h3>
					<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
				</div>
			</div>

			<!-- 第二张轮播 -->
			<div class="item">
				<img src="${pageContext.request.contextPath}/main/dist/images/bg-1.jpg" data-src="" alt="900x500">
				<div class="carousel-caption img-rounded">
					<h3>Second slide label</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				</div>
			</div>

			<!-- 第三张轮播 -->
			<div class="item">
				<img src="${pageContext.request.contextPath}/main/dist/images/bg-2.jpg" data-src="" alt="900x500">
				<div class="carousel-caption">
					<h3>Third slide label</h3>
					<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
				</div>
			</div>

		</div>
		<!-- /主轮播结束 -->

		<!-- 左右轮播按钮 -->
		<a class="left carousel-control" href="#carousel-example-captions" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> </a> <a class="right carousel-control" href="#carousel-example-captions" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a>

	</div>


</div>
<!--/span-->