<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Panel</title>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/admin/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/admin/styles.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div id="head-left">
				<div class="thumbnail">
					<a href="${pageContext.request.contextPath}/admin/index"><img
						src="${pageContext.request.contextPath}/images/admin/logo.png"></a>
				</div>
				<h1>Admin Panel</h1>
			</div>
			<div id="head-right">
				<p>
					Xin chào, <span>Bố Toàn Anlol</span><a href="javascript:void(0)">Đăng
						xuất</a>
				</p>
			</div>
		</div>
		<div id="main">
			<div id="col-left">
				<div class="clear-top"></div>
				<ul>
					<li class="dropdown-menu"><a href="javascript:void(0)">Quản
							lý</a>
						<ul class="submenu">
							<li><a
								href="${pageContext.request.contextPath}/admin/quan-ly-don-hang">Quản
									lý đơn hàng</a></li>
							<li><a href="QLBA">Quản lý banner</a></li>
						</ul></li>
					<li><a href="javascript:void(0)">Menu 2 (static)</a>
						<ul>
							<li><a href="javascript:void(0)">Submenu 2.1</a></li>
							<li><a href="javascript:void(0)">Submenu 2.2</a></li>
							<li><a href="javascript:void(0)">Submenu 2.3</a></li>
						</ul></li>
					<li><a href="javascript:void(0)">Menu 3</a></li>
					<li><a href="javascript:void(0)">Menu 4</a></li>
					<li><a href="javascript:void(0)">Menu 5</a></li>
					<li><a href="javascript:void(0)">Menu 6</a></li>
<<<<<<< HEAD
<<<<<<< HEAD
=======
					<li><a href="QLBA">Quản lý banner</a></li>
>>>>>>> parent of ea295df... update SQL Banners... Banner Admin
=======
					<li><a href="QLBA">Quản lý banner</a></li>
>>>>>>> parent of ea295df... update SQL Banners... Banner Admin
				</ul>
			</div>
			<div id="col-right">
				<jsp:include page="${param.view}" />
			</div>
		</div>
		<div id="footer">
			<h1>2017 &copy Yellow Team</h1>
		</div>
	</div>
</body>
</html>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/admin/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/admin/admin.functions.js"></script>