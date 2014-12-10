<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>  
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>DRMS - Loginpage</title>
	<link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.servletContext.contextPath}/resources/css/login.css" rel="stylesheet">
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="header">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="${pageContext.servletContext.contextPath}/resources/imgs/loginlogo.png" alt="" title="logo" class="img-responsive"/></a>
            </div>
            <div class="collapse pull-right navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="javascript:void(0);">for business</a></li>
                    <li><a href="javascript:void(0);">for utilities</a></li>
                    <li>
                        <a href="javascript:void(0);">solutions</a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">our network</a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">resources</a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">contact us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <header class="image-bg-fluid-height">
        <div class="loginbg">
        	<img src="${pageContext.servletContext.contextPath}/resources/imgs/loginboxImg.png"/>
        	<p>Demand Response Management System</p>
            <!-- <form class="form" role="form"> -->
			<form id='loginForm' name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
              <div class="form-group">
                <div class="input-group">
                  <label class="sr-only" for="exampleInputEmail2">Email</label>
                  <div class="input-group-addon glyphicon glyphicon-user"></div>
                  <input type="text" class="form-control" name="username" placeholder="User Name">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <label class="sr-only" for="password">Password</label>
                  <div class="input-group-addon glyphicon glyphicon-lock"></div>
                  <input type="password" class="form-control" name="password" placeholder="Password">
                </div>
              </div>
			  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			  <!-- <input name="submit" type="submit" value="submit" /> -->
			  <button type="submit" class="btn btn-primary btn-lg btn-block">LOGIN</button>
            </form>
            
            <!-- <button type="submit" class="btn btn-primary btn-lg btn-block">LOGIN</button> -->
			
        </div>
    </header>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-lg-6">
                    <p>Copyright © 2014 Demand Response Management System. All Rights Reserved.</p>
                </div>
                <div class="col-xs-12 col-lg-6">
                    <p align="right"><a href="javascript:void(0);">Terms of Use</a> | <a href="javascript:void(0);">Privacy Policy</a> | <a href="javascript:void(0);">Disclaimer</a></p>
                </div>
            </div>
        </div>
    </footer>
    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.js"></script>
    <script src="${pageContext.servletContext.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/resources/js/formValidation.js"></script>
    <script src="${pageContext.servletContext.contextPath}/resources/js/framework/bootstrap.js"></script>
    <script>
    	$(document).ready(function(e) {
             $('#loginForm').formValidation({
				message: 'This value is not valid',
				excluded: ':disabled',
				icon: {
					valid: 'glyphicon glyphicon-ok',
					invalid: 'glyphicon glyphicon-remove',
					validating: 'glyphicon glyphicon-refresh'
				},
				fields: {
					username: {
						validators: {
							notEmpty: {
								message: 'The email is required and cannot be empty'
							}
						}
					},
					password: {
						validators: {
							notEmpty: {
								message: 'The password is required and cannot be empty'
							},
							different: {
								field: 'username',
								message: 'The password cannot be the same as username'
							}
						}
					},
					
				}
			}).on('error.form.fv', function(e) {
		
				var $form         = $(e.target),
					validator     = $form.data('formValidation'),
					$invalidField = validator.getInvalidFields().eq(0);
			});
        });
    </script>
</body>
</html>