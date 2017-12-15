<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login page</title>
</head>
<body>
	<br />
	<br />
	<br />
	<br />
	<br />
	<center>
		<s:form method="post" action="login" >
			<h3>Login to shop</h3>
			<br />
			<table cellpadding="2" cellspacing="2">
				<tr>
					<td>Username</td>
					<td><input type="text" name="username" size="30px" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" size="30px" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><label class="form-check-label"><input
							class="form-check-input" type="checkbox">Nhớ mật khẩu </label></td>
					<td><center>
							<input type="submit" value="Đăng nhập" />
						</center></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><center>
							<a href="${pageContext.request.contextPath }/register">Đăng
								ký</a>
						</center></td>
					<td><center>
							<a href="${pageContext.request.contextPath }/forgot">Quên
								mật khẩu</a>
						</center></td>
				</tr>
			</table>
			${loginmsg}
		</s:form>
	</center>
	<br />
	<br />
	<br />
	<br />
	<br />
</body>
</html>