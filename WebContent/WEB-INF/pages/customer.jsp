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
                        <li class="active">Customer</li>
                    </ol>
                </section>

                <section class="content">
					<div class="box box-solid box-primary">
                                <div class="box-header">
                                <form class="form-inline" role="form">
                                <div class="form-group">
                                    <div class="input-group">
                                     
                                      <div class="input-group-addon">Customer ID</div>
                                      <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Enter Customer ID">
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <div class="input-group">
                                     
                                      <div class="input-group-addon">Tag</div>
                                      <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Enter Customer ID">
                                    </div>
                                  </div>
                                    <button type="button" class="btn btn-primary pull-right" onClick="location.href='customer_new.html'"><i class="fa fa-user-md"></i>New Customer</button>
                                    <button type="button" class="btn btn-primary pull-right"><i class="fa fa-search"></i>Search</button>
                                    </form>
                                </div>
                                <div class="box-body table-responsive">
                                    <table id="customer" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Customer ID</th>
                                                <th>Given Name</th>
                                                <th>First Name</th>
                                                <th>Address</th>
                                                <th>Tel</th>
                                                <th>Mail</th>
                                                <th>Tag</th>
                                                <th>Device State</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>0000001</td>
                                                <td>Geoffrey</td>
                                                <td>Rush</td>
                                                <td>200 Broadway Av WEST BEACH SA 5024 </td>
                                                <td>0000001</td>
                                                <td>Geoffrey.rush@au.com</td>
                                                <td><a href="#myModal" class="tags" data-toggle="modal" data-target="#myModal">Tag1, Tag2, ...</a></td>
                                                <td>Active</td>
                                                <td><a href="#"><i class="fa fa-pencil"></i></a><a href="#"><i class="fa fa-times"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>0000002</td>
                                                <td>Russell</td>
                                                <td>Crowe</td>
                                                <td>200 Broadway Av WEST BEACH SA 5024 </td>
                                                <td>0000002</td>
                                                <td>Russell.Crowe@au.com</td>
                                                <td><a href="#myModal" data-toggle="modal" data-target="#myModal" class="tags">Tag1, Tag2, ...</a></td>
                                                <td>Delete</td>
                                                <td><a href="#"><i class="fa fa-pencil"></i></a><a href="#"><i class="fa fa-times"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>0000003</td>
                                                <td>Nicole</td>
                                                <td>Kidman</td>
                                                <td>200 Broadway Av WEST BEACH SA 5024 </td>
                                                <td>0000003</td>
                                                <td>Nicole.kidman@au.com</td>
                                                <td><a href="#myModal" data-toggle="modal" data-target="#myModal" class="tags">Tag1, Tag2, ...</a></td>
                                                <td>Active</td>
                                                <td><a href="#"><i class="fa fa-pencil"></i></a><a href="#"><i class="fa fa-times"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>0000004</td>
                                                <td>Ian</td>
                                                <td>Thorpe</td>
                                                <td>200 Broadway Av WEST BEACH SA 5024 </td>
                                                <td>0000004</td>
                                                <td>Ian.Thorpe@au.com</td>
                                                <td><a href="#myModal" data-toggle="modal" data-target="#myModal" class="tags">Tag1, Tag2, ...</a></td>
                                                <td>Delete</td>
                                                <td><a href="#"><i class="fa fa-pencil"></i></a><a href="#"><i class="fa fa-times"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>0000005</td>
                                                <td>Cathy</td>
                                                <td>Freeman</td>
                                                <td>200 Broadway Av WEST BEACH SA 5024 </td>
                                                <td>0000005</td>
                                                <td>Cathy.freeman@au.com</td>
                                                <td><a href="#myModal" data-toggle="modal" data-target="#myModal" class="tags">Tag1, Tag2, ...</a></td>
                                                <td>Active</td>
                                                <td><a href="#"><i class="fa fa-pencil"></i></a><a href="#"><i class="fa fa-times"></i></a></td>
                                            </tr>
                                            
                                        </tbody>
                                        <tfoot style="display:none;">
                                            <tr>
                                               <th>Customer ID</th>
                                                <th>Given Name</th>
                                                <th>First Name</th>
                                                <th>Address</th>
                                                <th>Tel</th>
                                                <th>Mail</th>
                                                <th>Tag</th>
                                                <th>Device State</th>
                                                <th>Action</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                   
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Tags</h4>
      </div>
      <div class="modal-body">
        <form class="form-inline" role="form">
          
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">Customer ID</div>
                  <input type="text" class="form-control" disabled  value="000000001">
                </div>
             
              </div>
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">Tags</div>
                  <input type="text" class="form-control" value="Tag1, Tag2">
                </div>
             
              </div>
              </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Save</button>
      </div>
    </div>
  </div>
</div>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.dataTables.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/dataTables.bootstrap.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/app.js" type="text/javascript"></script>

    </body>
</html>