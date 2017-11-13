<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<body>
	<div style="padding-bottom: 90px;">
		<div class="login-page">
			<div class="form" style="background: brown;">
				<form class="login-form" action="adindex" method="POST" >
					<input type="text" name="username" /> 
					<label class="loi">${mess2 }</label>
					<input type="password" name="password"  />
					<label class="loi">${mess3 }</label>
					<button>Login</button>
					<label class="loi">${mess4 }</label>
				</form>
			</div>
		</div>
	</div>
</body>
