<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<div id="loginbox" align="center" style="min-height: 300px">
	<form id="loginform" class="form-vertical" method="post"
		action="login-admin">
		<div class="control-group normal_text">
			<h3>Administrator</h3>
		</div>
		<div class="control-group">
			<div class="controls">
				<div class="main_input_box">
					<span class="add-on bg_lg">
					<i class="fa fa-user" aria-hidden="true"></i></span>
					<input type="text" placeholder="Username" name="username" />
				</div>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<div class="main_input_box">
					<span class="add-on bg_ly"><i class="fa fa-lock"
						aria-hidden="true"></i></span><input type="password"
						placeholder="Password" name="password" />
				</div>
			</div>
		</div>
		<div class="form-actions" align="center" style="margin-top: 10px;">
			<%-- <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">Register</a></span> --%>
			<input type="submit" class="btn btn-success" value="Login" />
		</div>
	</form>
</div>