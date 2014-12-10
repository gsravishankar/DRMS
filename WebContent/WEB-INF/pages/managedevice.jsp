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
                        <li><a href="javascript:void(0);">Device</a></li>
                        <li class="active">Manage</li>
                    </ol>
                </section>

                <section class="content">
					<div class="box box-solid box-primary">
                                <div class="box-header">
                                <form class="form-inline" role="form">
                                <div class="form-group">
                                    <div class="input-group input-groupStyle01">
                                      <input type="text" class="form-control" placeholder="IF Serial No">
                                    </div>
                                  </div>
                                  <div class="form-group">
                                   <div class="input-group input-groupStyle01">
                                      <input type="text" class="form-control" placeholder="SB Serial No">
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <div class="input-group input-groupStyle01">
                                      <input type="text" class="form-control" placeholder="Device Status">
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <div class="input-group input-groupStyle01">
                                      <input type="text" class="form-control" placeholder="Customer ID">
                                    </div>
                                  </div>
                                   
                                    <button type="button" class="btn btn-primary pull-right"><i class="fa fa-search"></i>GENERATE DEVICE LIST</button>
                                    </form>
                                </div>
                                <div class="box-body table-responsive">
                                    <table id="customer" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Status Change Date</th>
                                                <th>Status</th>
                                                <th>IF Unit Serial No.</th>
                                                <th>SB Unit Serial No.</th>
                                                <th>Module 1</th>
                                                <th>Module 2</th>
                                                <th>Module 3</th>
                                                <th>Customer ID</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>08 Aug2014 22:39:00</td>
                                                <td>Unregistered</td>
                                                <td>1</td>
                                                <td>800KW</td>
                                                <td>ZZ12</td>
                                                <td>ZZ12</td>
                                                <td>ZZ12</td>
                                                <td>CS14772</td>
                                                <td><a href="#"><i class="fa fa-pencil"></i></a><a href="#"><i class="fa fa-times"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>08 Aug2014 22:31:00</td>
                                                <td>Alert</td>
                                                <td>1</td>
                                                <td>200KW</td>
                                                <td>ZZ66</td>
                                                <td>ZZ66</td>
                                                <td>ZZ66</td>
                                                <td>CS15762</td>
                                                <td><a href="#"><i class="fa fa-pencil"></i></a><a href="#"><i class="fa fa-times"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>08 Aug2014 22:16:00</td>
                                                <td>Active</td>
                                                <td>1</td>
                                                <td>500KW </td>
                                                <td>ZZ26</td>
                                                <td>ZZ26</td>
                                                <td>ZZ26</td>
                                                <td>CS15947</td>
                                                <td><a href="#"><i class="fa fa-pencil"></i></a><a href="#"><i class="fa fa-times"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>08 Aug2014 22:10:00</td>
                                                <td>Unregistered</td>
                                                <td>1</td>
                                                <td>600KW</td>
                                                <td>ZZ88</td>
                                                <td>ZZ88</td>
                                                <td>ZZ88</td>
                                                <td>CS10805</td>
                                                <td><a href="#"><i class="fa fa-pencil"></i></a><a href="#"><i class="fa fa-times"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>08 Aug2014 22:05:00</td>
                                                <td>Alert</td>
                                                <td>1</td>
                                                <td>300KW</td>
                                                <td>ZZ26</td>
                                                <td>ZZ26</td>
                                                <td>ZZ26</td>
                                                <td>CS14672</td>
                                                <td><a href="#"><i class="fa fa-pencil"></i></a><a href="#"><i class="fa fa-times"></i></a></td>
                                            </tr>
                                            
                                        </tbody>
                                        <tfoot style="display:none;">
                                            <tr>
                                               <th>Status Change Date</th>
                                                <th>Status</th>
                                                <th>IF Unit Serial No.</th>
                                                <th>SB Unit Serial No.</th>
                                                <th>Module 1</th>
                                                <th>Module 2</th>
                                                <th>Module 3</th>
                                                <th>Customer ID</th>
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