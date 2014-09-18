<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<link rel="shortcut icon" href="/base/logo/6.jpg">
<title>iDreamBox</title>
</head>

<body>

	<h1>
		<a href="/userAction!registerBefore.action">Register</a>
	</h1>
	<br>
	
	<h1>
		<a href="/userAction!loginBefore.action">Login</a>
	</h1>
	<br>
	
	<h1>
		<a href="/main/main.jsp">Main</a>
	</h1>
	<br>


</body>

</html>
