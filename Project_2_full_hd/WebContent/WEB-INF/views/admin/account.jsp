<%@page import="com.Models.AccountsModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Accounts</title>
</head>
<body>
	<% 
		AccountsModel acc = new AccountsModel();
	%>
	<center>
	<h3>Quản lý tài khoản</h3>
	<table class="table table-hover" cellspacing="2" border="1px">
		<tr>
			<th>Tên đăng nhập</th>
			<th>Mật khẩu</th>
			<th>Quyền tài khoản</th>
			<th>Trạng thái tài khoản</th>
			<th>Thao tác</th>
		</tr>
		<c:forEach var="acc" items="<%=acc.getAll()%>">
			<tr>
				<td>${acc.username}</td>
				<td>******</td>
				<td>${acc.roles?'Người dùng':'Quản lý'}</td>
				<td>${acc.status?'Active':'De-active'}</td>
				<td><h4><a href="${pageContext.request.contextPath }/update?un=${acc.username}">Sửa</h4></td>
			</tr>
		</c:forEach>
	</table>
	</center>
</body>
</html>