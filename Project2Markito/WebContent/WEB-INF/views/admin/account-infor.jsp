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
<title>Thông tin tài khoản</title>
</head>
<body>
	<form action="account-infor" method="post">
		<table>
			<tr>
				<td>ID khách hàng</td>
				<td><input type="text" name="" /></td>
			</tr>
			<tr>
				<td>Tên tài khoản</td>
				<td><input type="text" name="${sessionScope.user}" /></td>
			</tr>
			<tr>
				<td>Họ và tên</td>
				<td><input type="text" name="cusname" /></td>
			</tr>
			<tr>
				<td>Giới tính</td>
				<td><select name="gender">
						<option value="true">Nam</option>
						<option value="false">Nữ</option>
				</select></td>
			</tr>
			<tr>
				<td>Ngày sinh</td>
				<td><input type="text" name="birth" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"/></td>
			</tr>
			<tr>
				<td>Điện thoại</td>
				<td><input type="text" name="phone" /></td>
			</tr>
			<tr>
				<td>Địa chỉ</td>
				<td><input type="text" name="address" /></td>
			</tr>
		</table>
		<input type="submit" value="Cập nhật" />
	</form>
</body>
</html>