<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Đăng nhập trang quản trị Markito Shop</div>
			<div class="card-body">
				<form method="POST" action="check-login" id="admin-test">
					<div class="form-group">
						<label for="username">Username</label> <input class="form-control"
							id="username" type="text" name="username"
							placeholder="Nhập username...">
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input class="form-control"
							id="password" name="password " type="password"
							placeholder="**************">
					</div>
					<div class="form-group">
						<div class="form-check">
							<label class="form-check-label"> <input
								class="form-check-input" type="checkbox"> Ghi nhớ mật
								khẩu
							</label>
						</div>
					</div>
					<a class="btn btn-primary btn-block" href="javascript:void(0);"
						id="btn-login-click">Login</a>
				</form>
				<div class="text-center">
					<!-- <a class="d-block small mt-3" href="register.html">Register an Account</a> -->
					<a class="d-block small" href="forgot-password.html">Quên mật
						khẩu?</a>
				</div>
			</div>
		</div>
	</div>
	<div id="dialog-message" title="Error">
		<p>Bạn phải nhập username và password!</p>
	</div>
</body>

<script>
	$(document).ready(
			function() {
				$("#dialog-message").hide();

				$("#btn-login-click").click(
						function() {
							if ($("#username").val() == ""
									& $("#password").val() == ""
									| $("#username").val() == null
									& $("#password").val() == null
									| $("#username").val() == ""
									| $("#username").val() == null
									| $("#password").val() == ""
									| $("#password").val() == null) {
								$("#dialog-message").dialog({
									modal : true,
									buttons : {
										Ok : function() {
											$(this).dialog("close");
										}
									}
								});
								$(".ui-dialog-titlebar").css({
									background : 'red',
								});
							}else{
								$("#admin-login").submit();
							}
						});
			});
</script>
