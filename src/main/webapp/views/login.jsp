<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/test.css" />
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<h1 class="text-center login-title">Sign in</h1>
				<div class="account-wall">
					<img class="profile-img"
						src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
						alt="">
					<form:form class="form-signin" action="login" method="post">
						<input type="text" class="form-control" name="username" placeholder="User Name" required autofocus> 
						<input type="password" class="form-control" name="password" placeholder="Password" required>
						<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
						<label class="checkbox pull-left">
							<input type="checkbox" value="remember-me"> Remember me
						</label>
						<a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
					</form:form>
				</div>
				<a href="#" class="text-center new-account">Create an account </a>
			</div>
		</div>
	</div>
</body>
</html>