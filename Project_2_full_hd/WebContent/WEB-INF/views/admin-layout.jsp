<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String a = request.getRequestURL().toString();
	String b = a.substring(0, 40);
%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="shortcut icon" type="image/x-icon" href="<%=b%>images/admin/favicon.ico">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=b%>css/admin/styles.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div id="head-left">
				<div class="thumbnail">
					<img src="<%=b%>images/admin/logo.png">
				</div>
				<h1>FPT Telecom - Công ty Cổ phần Viễn thông FPT</h1>
			</div>
			<div id="head-right">
				<p>Xin chào <span>Vũ Tuân</span><a href="javascript:void(0)">Đăng xuất</a></p>
			</div>
		</div>
		<div id="main">
			<div id="col-left">
				<div class="clear-top"></div>
				<ul>
					<li class="dropdown-menu"><a href="javascript:void(0)">Menu 1 (dropdown)</a>
						<ul class="submenu">
							<li><a href="javascript:void(0)">Trung tâm hệ thống thông tin</a></li>
							<li><a href="javascript:void(0)">Submenu 1.2</a></li>
							<li><a href="javascript:void(0)">Submenu 1.3</a></li>
						</ul>
					</li>
					<li><a href="javascript:void(0)">Menu 2 (static)</a>
						<ul>
							<li><a href="javascript:void(0)">Submenu 2.1</a></li>
							<li><a href="javascript:void(0)">Submenu 2.2</a></li>
							<li><a href="javascript:void(0)">Submenu 2.3</a></li>
						</ul>
					</li>
					<li><a href="javascript:void(0)">Menu 3</a></li>
					<li><a href="javascript:void(0)">Menu 4</a></li>
					<li><a href="javascript:void(0)">Menu 5</a></li>
					<li><a href="javascript:void(0)">Menu 6</a></li>
					<li><a href="javascript:void(0)">Menu 7</a></li>
				</ul>
			</div>
			<div id="col-right">
				<jsp:include page="${param.view}" />
			</div>
		</div>
		<div id="footer">
			<h1>2017 &copy FPT Telecom</h1>
		</div>
	</div>
</body>
</html>
<script type="text/javascript" src="<%=b%>js/admin/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=b%>js/admin/admin.functions.js"></script>