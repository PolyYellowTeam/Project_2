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
	<%
		AccountsModel acc = new AccountsModel();
		String username = request.getParameter("un");
		Accounts account = acc.getAcc(username);
	%>
	<center>
		<h3>Chỉnh sửa tài khoản</h3>
		<br>
		<s:form action="updateAccount" method="post">
			<table cellpadding="2" cellspacing="2">
				<tr>
					<td>Tên đăng nhập/ Email</td>
					<td><input type="text" name="username"
						value="<%=account.getUsername()%>" readonly="true" /></td>
				</tr>
				<tr>
					<td>Mật khẩu</td>
					<td><input type="password" name="password"
						value="<%=account.getPassword()%>" /></td>
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
			<input type="submit" value="Cập nhật">
		</s:form>
	</center>
</body>
</html>