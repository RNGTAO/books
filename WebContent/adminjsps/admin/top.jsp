<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>top.jsp</title>
<base target="body">

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<style type="text/css">
body {
	font-size: 12pt;
}

a {
	color: #aaa;
}
</style>
</head>

<body style="background: rgb(47, 79, 79); color: #fff;">
	<h1 style="text-align: center; line-height: 30px;">校园图书交易平台后台管理</h1>
	<div style="line-height: 15px;" align="center">

		<span style="padding-left: 10px;"> <a
			href="<c:url value='/admin/AdminCategoryServlet?method=findAll'/>">分类管理</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
			href="<c:url value='/adminjsps/admin/book/main.jsp'/>">图书管理</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
			href="<c:url value='/admin/AdminOrderServlet?method=findAll'/>">订单管理</a>
		</span>
	</div>
	<div style="line-height: 10px;" align="right">
		<span>管理员：${sessionScope.admin.adminname }</span> <a target="_top"
			href="<c:url value='/adminjsps/login.jsp'/>">退出</a>
	</div>

</body>
</html>
