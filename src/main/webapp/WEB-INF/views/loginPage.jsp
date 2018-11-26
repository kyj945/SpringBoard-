<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/loginAndRegister.js"></script>
</head>
<body>

<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
							<a href="#" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="/login" method="POST" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="login_userId" id="login_userId" tabindex="1" class="form-control" placeholder="User Id." value="">
									</div>
									<div class="form-group">
										<input type="password" name="login_pwd" id="login_pwd" tabindex="2" class="form-control" placeholder="User password">
									</div>
									<div class="form-group" style="color: red;text-align: center;">
										<h4>${msg}</h4>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<!-- <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Login"> -->
												<button onclick="login()" tabindex="4" class="form-control btn btn-login">Login</button>
											</div>
										</div>
									</div>
									
								</form>
								<form id="register-form" action="/member/create" method="POST" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="register_userId" id="register_userId" tabindex="1" class="form-control" placeholder="User Id" value="">
									</div>
									<div class="form-group">
										<input type="password" name="register_pwd" id="register_pwd" tabindex="2" class="form-control" placeholder="User Password">
									</div>
									<div class="form-group">
										<input type="text" name="register_name" id="register_name" tabindex="1" class="form-control" placeholder="User Name" value="">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<button onclick="register()" tabindex="4" class="form-control btn btn-login">Register Now</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>