<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>DRMS</title>
		<meta name="_csrf" content="${_csrf.token}"/>
		<meta name="_csrf_header" content="${_csrf.headerName}"/>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.servletContext.contextPath}/resources/css/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.servletContext.contextPath}/resources/css/app.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="skin-blue bg">
		<%@include file="header.jsp" %>
		<div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
		<%@include file="sidemenu.jsp" %>
            <aside class="right-side">                
                <section class="content-header">
                    
                    <ol class="breadcrumb">
                        <li><a href="landing.html"><i class="fa fa-home"></i> > Home</a></li>
                        <li class="active">Account</li>
                    </ol>
                </section>

                <section class="content">
					<div class="box box-solid box-primary">
                                <div class="box-header">
                                <form class="form-inline" role="form">
                                <div class="form-group">
                                    <div class="input-group">
                                     
                                      <div class="input-group-addon">Administrator</div>
                                      <input type="text" class="form-control" placeholder="Enter Administrator ID">
                                    </div>
                                  </div>
                                  <button type="button" class="btn btn-primary pull-right" onClick="location.href='account_new'"><i class="fa fa-user-md"></i>New Administrator</button>
                                   <button type="button" class="btn btn-primary pull-right" onClick="location.href='viewlogs'"><i class="glyphicon glyphicon-list-alt"></i>View Logs</button>
                                    <button type="button" class="btn btn-primary pull-right" onClick="location.href='changepassword.html'"><i class="fa fa-unlock"></i>Change Own Password</button>
                                    
                                    <button type="button" class="btn btn-primary pull-right"><i class="fa fa-search"></i>Search</button>
                                    </form>
                                </div>
                                <div class="box-body table-responsive">
									<form id="accountform" name="accountform" role="form">
                                    <table id="customer" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Account ID</th>
                                                <th>Given Name</th>
                                                <th>First Name</th>
                                                <th>Tel</th>
                                                <th>Mail</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
											<c:if test="${not empty accountlist}">
													<c:forEach var="account" items="${accountlist}">
													<tr>
														<td>${account.getUserName()}</td>
														<td>${account.getFirstName()}</td>
														<td>${account.getLastName()}</td>
														<td>${account.getPhoneNumber()}</td>
														<td>${account.getEmailId()}</td>
														<td>${account.getAccountStatus()}</td>
														<td><a href="javascript:resetpassword('${account.getUserName()}')" title="Reset password"><i class="glyphicon glyphicon-refresh"></i></a><a href="#" title="Inactivate"><i class="glyphicon glyphicon-minus-sign"></i></a></td>
													</tr>
													</c:forEach>										 
											</c:if>
                                 </tbody>
                                        <tfoot style="display:none;">
                                            <tr>
                                               <th>Account ID</th>
                                                <th>Given Name</th>
                                                <th>First Name</th>
                                                <th>Tel</th>
                                                <th>Mail</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </tfoot>
                                    </table>
									<input type="hidden" id="chg_user" name="chg_user">
									</form>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div>
		<!-- Reset Password Confirmation Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="myModalLabel">Confirmation</h4>
			  </div>
			  <div class="modal-body" id="result">
			  Password Successfully Reset
			  </div>
			  <div class="modal-footer">
				<button type="button" onClick="javascript:closeWindow()" class="btn btn-primary">Close</button>
			  </div>
			</div>
		  </div>
		</div>
		<!-- Reset Password Confirmation Modal -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.dataTables.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/dataTables.bootstrap.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/app.js" type="text/javascript"></script>
		<script>
		function resetpassword(username) {
			if(confirm("Are you sure to reset password for "+username+" ?")) {
				document.accountform.chg_user.value=username;
				//var formData = new FormData($($("#application"))[0]);
				//alert(formData);
				$.ajax({
				url: 'resetpassword/'+username,
				success: function (returndata) {
					//alert(returndata);
					//location.href="myModal";
					$("#result").text(returndata); 
					$('#myModal').modal('show');
				}
				});
			}

		}
		function closeWindow() {
			$('#myModal').modal('hide');
		}
		//data: formData,
		</script>
    </body>
</html>