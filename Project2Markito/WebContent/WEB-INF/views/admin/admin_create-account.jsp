<%@page import="com.Entities.Accounts"%>
<%@page import="com.Models.AccountsModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Account Update</title>
</head>
<body>
	<center>
		<h3>Tạo mới tài khoản</h3>
		<br>
		<s:form action="createacc" method="post">
			<table cellpadding="2" cellspacing="2">
				<tr>
					<td>Tên đăng nhập/ Email</td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td>Mật khẩu</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Quyền tài khoản</td>
					<td><select name="role">
							<option value="false">Admin</option>
							<option value="true">Người dùng</option>
					</select></td>
				</tr>
				<tr>
					<td>Trạng thái</td>
					<td><select name="status">
							<option value="true">Active</option>
							<option value="false">De-Active</option>
					</select></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="Tạo tài khoản">
		${createmsg}
		</s:form>
	</center>
</body>
</html>