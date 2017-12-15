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
		<s:form method="post" action="changepassword">
			<table cellpadding="2" cellspacing="2">
				<tr>
					<td>Mật khẩu mới</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Nhập lại mật khẩu</td>
					<td><input type="password" name="repassword" /></td>
				</tr>
				<tr>
					<td><a href="${pageContext.request.contextPath }/login">Đăng
							nhập</a></td>
					<td><input type="submit" value="Đặt lại mật khẩu"></td>
				</tr>
			</table>
			${changepasswordmsg}
		</s:form>
	</center>
</body>
</html>