<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List, com.panasonic.drms.audit.model.AuditDetail" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>DRMS</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.servletContext.contextPath}/resources/css/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.servletContext.contextPath}/resources/css/datepicker.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.servletContext.contextPath}/resources/css/app.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="skin-blue bg">
		<%@include file="header.jsp" %>
		<div class="wrapper row-offcanvas row-offcanvas-left">
		<%@include file="sidemenu.jsp" %>

            <aside class="right-side">                
                <section class="content-header">
                    
                    <ol class="breadcrumb">
                        <li><a href="landing.html"><i class="fa fa-home"></i> > Home</a></li>
                        <li><a href="account_summary.html">Account</a></li>
                        <li class="active">View Logs</li>
                    </ol>
                </section>

                <section class="content">
					<div class="box box-solid box-primary">
                                <div class="box-header">
                                <form class="form-inline" role="form">
                                <div class="form-group">
                                    <div class="input-group datecomp">
                                     
                                      <div class="input-group-addon">FROM</div>
                                     <input type="text" class="form-control" >
                                     <i class="fa fa-calendar"></i>
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <div class="input-group datecomp">
                                     
                                      <div class="input-group-addon">TO</div>
                                      <input type="text" class="form-control" >
                                      <i class="fa fa-calendar"></i>
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <div class="input-group">
                                     
                                      <div class="input-group-addon">KEYWORD(optional)</div>
                                      <input type="text" class="form-control" placeholder="Enter any Character">
                                    </div>
                                  </div>
                                    <button type="button" class="btn btn-primary pull-right"><i class="fa fa-search"></i>Search</button>
                                    </form>
                                </div>
                                <div class="box-body table-responsive">
                                    <table id="customer" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Serial No</th>
                                                <th>Status Change Date & Tme</th>
                                                <th>Admin ID</th>
                                                <th>Type</th>
                                                <th>Description</th>
                                            </tr>
                                        </thead>
                                        <tbody>
											<c:if test="${not empty AuditList}">
										 
												
													<c:forEach var="listValue" items="${AuditList}">
													<tr>
														<td>${listValue.getSerialNo()}</td>
														<td>${listValue.getStatusChangeTime()}</td>
														<td>${listValue.getAdminID()}</td>
														<td>${listValue.getType()}</td>
														<td>${listValue.getDescription()}</td>
													</tr>
													</c:forEach>
												
										 
											</c:if>
                                        </tbody>
                                        <tfoot style="display:none;">
                                            <tr>
                                               <th>Serial No</th>
                                                <th>Status Change Date & Tme</th>
                                                <th>Admin ID</th>
                                                <th>Type</th>
                                                <th>Description</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.dataTables.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/dataTables.bootstrap.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/bootstrap-datepicker.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/app.js" type="text/javascript"></script>

    </body>
</html>