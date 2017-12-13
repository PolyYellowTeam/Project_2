<%@ page pageEncoding="utf-8"%>	
<style type="text/css">
*[id$=userlo]{
	color:red;
	font-style: italic;
	font-size: 16px;
}
</style>	
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Đăng nhập</h2>
						<h5>${message}</h5>		
						<span style="color:red;	font-style: italic;	font-size: 16px;">${userlo}</span><br>		
						<form action="login" method="post">
							<input type="text" name="username" placeholder="Username" />
							<input type="password" name="password" placeholder="Password" />
							<span>
								<input type="checkbox" class="checkbox"> 
								Keep me signed in
							</span>
							<button type="submit" class="btn btn-default">Login</button>
						</form>
					</div><!--/login form-->
				</div>				
			</div>
		</div>		
	</section>	
	
