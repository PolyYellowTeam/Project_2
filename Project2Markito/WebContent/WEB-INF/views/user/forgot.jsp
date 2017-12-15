<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reset mật khẩu tài khoản</title>
</head>
<body>
	<center>
		<s:form method="post" commandName="acc" action="register">
			<table cellpadding="2" cellspacing="2">
				<tr>
					<td>Tên đăng nhập/ Email</td>
					<td><input type="text" /></td>
				</tr>
				<tr>
					<td>Mật khẩu</td>
					<td><input type="password" /></td>
				</tr>
				<tr>
					<td>Nhập lại mật khẩu</td>
					<td><input type="password" /></td>
				</tr>
				<tr>
					<td><a href="${pageContext.request.contextPath }/account">Đăng
								nhập</a></td>
					<td><input type="submit" value="Đặt lại mật khẩu"></td>
				</tr>
			</table>
			${registermsg}
		</s:form>
	</center>
</body>
</html>