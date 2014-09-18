<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!-- 导航栏 -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">

		<!-- logo部分 -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}/index.action">iDreamBox</a>
		</div>

		<!-- logo右侧部分 -->
		<div class="navbar-collapse collapse">

			<!-- 左侧 -->
			<ul class="nav navbar-nav">
				<li><a href="#">首页</a></li>
				<li><a href="#about">关于</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">联系<b class="caret"></b> </a>
					<ul class="dropdown-menu">
						<li class="dropdown-header">开发者：DoubleRound</li>
						<li class="divider"></li>
						<li><a href="mailto:954155714@qq.com">邮箱:954155714@qq.com</a></li>
					</ul>
				</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">更多<b class="caret"></b> </a>
					<ul class="dropdown-menu">
						<li><a href="http://www.chinaso.com">支持国家搜索队</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">Nav header</li>
						<li><a href="#">Separated link</a></li>
						<li><a href="#">One more separated link</a></li>
					</ul>
				</li>
			</ul>

			<!-- 右侧 -->
			<ul class="nav navbar-nav navbar-right">
				<s:set name="userSession" value="#session.org_idreambox_user_session.id"></s:set>
				<s:if test="#userSession == null">
					<li><a href="${pageContext.request.contextPath}/userAction!loginBefore.action">登录</a></li>
					<li><a href="${pageContext.request.contextPath}/userAction!registerBefore.action">注册</a></li>
				</s:if>
				<s:else>
					<li><a href="#">您好，<s:property value="#session.org_idreambox_user_session.name" /></a></li>
					<li><a href="${pageContext.request.contextPath}/userAction!logout.action">[退出]</a></li>
				</s:else>
			</ul>
		</div>
		
	</div>
</div>