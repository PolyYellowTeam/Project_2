<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
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
					<img src="${pageContext.request.contextPath}/images/admin/logo.png">
				</div>
				<h1>Admin Panel</h1>
			</div>
			<div id="head-right">
				Xin chào ${sessionScope.user},<a
					href="${pageContext.request.contextPath }/logout">đăng xuất</a>
			</div>
		</div>
		<div id="main">
			<div id="col-left">
				<div class="clear-top"></div>
				<ul>
					<li class="dropdown-menu"><a href="javascript:void(0)">Menu
							1 (dropdown)</a>
						<ul class="submenu">
							<li><a
								href="${pageContext.request.contextPath}/admin/quan-ly-don-hang">Quản
									lý đơn hàng</a></li>
						</ul></li>
					<li class="dropdown-menu"><a href="javascript:void(0)">Manage
							Accounts</a>
						<ul class="submenu">
							<li><a
								href="${pageContext.request.contextPath}/admin/account">Thông
									tin tài khoản</a></li>
							<li><a
								href="${pageContext.request.contextPath}/admin/create-account">Tạo
									tài khoản</a></li>
						</ul></li>
				</ul>
				</li>

				<li><a href="javascript:void(0)">Menu 2 (static)</a>
					<ul>
						<li><a href="javascript:void(0)">Submenu 2.1</a></li>
					</ul></li>
				<li><a href="QLBAdata">Quản lý banner</a></li>
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