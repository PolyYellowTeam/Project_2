<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login page</title>
</head>
<body>
	<center>
		<s:form method="post" action="account/login">
			<table>
				<tr>
					<td>Username</td>
					<td><input type="text" name="username"/></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password"/></td>
				</tr>
				<tr>
					<td><label class="form-check-label"> <input
							class="form-check-input" type="checkbox">Nhớ mật khẩu
					</label></td>
					<td><input type="submit" value="Đăng nhập" /></td>
				</tr>

				<!-- <a class="d-block small mt-3" href="register.html">Register an Account</a> -->
				<tr>
					<td><a class="d-block small"
						href="${pageContext.request.contextPath }/account/forgot">Quên mật
							khẩu?</a></td>
					<td><a class="d-block small"
						href="${pageContext.request.contextPath }/account/register">Đăng ký</a></td>
				</tr>
			</table>
			${loginmsg}
		</s:form>
	</center>
</body>
</html>