<%@taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>  
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
            <!-- Left side column. contains the logo and sidebar -->
			<%@include file="sidemenu.jsp" %>

            <aside class="right-side">                
                <section class="content-header">
                    
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-home"></i> > Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>

                <section class="content">
					<div class="row">
                    		<div class="col-md-5">
                            	<div class="box box-solid box-info">
                                	<div class="box-header">
                                    	<h3 class="box-title box-title-icon datareport">Key data reporting</h3>
                                    </div>
                                    <div class="box-body">
                                    	<div class="row">
                                            <div class="col-md-6 topleft text-center">
                                                <input type="text" class="knob" value="30" data-width="90" data-thickness="0.1" data-height="90" data-fgColor="#eb1871" data-readonly="true"/>
                                            	<div class="knob-label">BATTERY</div>
                                            </div>
                                            <div class="col-md-6 topright text-center">
                                                <input type="text" class="knob" value="90" data-width="90" data-thickness="0.1" data-height="90" data-fgColor="#eb1871" data-readonly="true"/>
                                            	<div class="knob-label">INCIDENT(S)</div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 bottomleft text-center">
                                                <input type="text" class="knob" value="20" data-width="90" data-thickness="0.1" data-height="90" data-fgColor="#eb1871" data-readonly="true"/>
                                            	<div class="knob-label">BATTERY CAPACITY</div>
                                            </div>
                                            <div class="col-md-6 bottomright text-center">
                                                <input type="text" class="knob" value="60" data-width="90" data-thickness="0.1" data-height="90" data-fgColor="#eb1871" data-readonly="true"/>
                                            	<div class="knob-label">CURRENT CAPACITY</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    		<div class="col-md-7">
                            	<div class="box box-solid box-info">
                                	<div class="box-header">
                                    	<h3 class="box-title box-title-icon grData">Graphical representation of data</h3>
                                    </div>
                                    <div class="box-body chart-responsive">
                                    <div class="chart" id="bar-chart" style="height: 300px;"></div>
                                </div>
                                </div>
                            </div>
                            
                    </div>
                    <div class="row">
                    		<div class="col-md-6">
                            	<div class="box box-solid box-info">
                                	<div class="box-header">
                                    <h3 class="box-title box-title-icon overallsys">Overall System</h3>
                                    
                                </div>
                                    <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover" cellpadding="0" cellspacing="0" id="overalltable">
                                        <thead>
                                        <tr>
                                            <th align="center">Issue Date</th>
                                            <th align="center">Registered Devices</th>
                                            <th align="center">DR-EMS Alert</th>
                                            <th align="center">Current Capacity</th>
                                            
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>01/02/2014</td>
                                            <td align="center">3</td>
                                            <td align="center">1</td>
                                            <td>500KW</td>
                                            
                                        </tr>
                                        <tr>
                                            <td>01/06/2014</td>
                                            <td align="center">2</td>
                                            <td align="center">1</td>
                                            <td>600KW</td>
                                            
                                        </tr>
                                        <tr>
                                            <td>01/12/2014</td>
                                            <td align="center">6</td>
                                            <td align="center">1</td>
                                            <td>300KW</td>
                                            
                                        </tr>
                                        <tr>
                                            <td>02/02/2014</td>
                                            <td align="center">1</td>
                                            <td align="center">1</td>
                                            <td>900KW</td>
                                            
                                        </tr>
                                        <tr>
                                            <td>01/06/2014</td>
                                            <td align="center">12</td>
                                            <td align="center">1</td>
                                            <td>100KW</td>
                                            
                                        </tr>
                                        <tr>
                                            <td>01/02/2014</td>
                                            <td align="center">1</td>
                                            <td align="center">1</td>
                                            <td>900KW</td>
                                            
                                        </tr>
                                        </tbody>
                                        <tfoot style="display:none;">
                                        <tr>
                                            <th align="center">Issue Date</th>
                                            <th align="center">Registered Devices</th>
                                            <th align="center">DR-EMS Alert</th>
                                            <th align="center">Current Capacity</th>
                                            
                                        </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                            	<div class="box box-solid box-info">
                                	<div class="box-header">
                                    	<h3 class="box-title box-title-icon reportLoc">Select Reporting Location</h3>
                                    </div>
                                    <div class="box-body">
                                    	 <div id="world-map" style="height: 325px;"></div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.knob.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/morris.min.js" type="text/javascript"></script>
		<script src="${pageContext.servletContext.contextPath}/resources/js/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.dataTables.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/dataTables.bootstrap.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/app.js" type="text/javascript"></script>

    </body>
</html>