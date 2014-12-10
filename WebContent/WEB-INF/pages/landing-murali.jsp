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
                        <li><a href="javascript:void(0);">Report</a></li>
                        <li class="active">Battery Report</li>
                    </ol>
                </section>
                <section class="content">
					<div class="box box-solid bg-blue batteryboiler">
                        <div class="row">
                            <div class="batteryno col-md-3">
                                <h3>Battery Number <span>5</span></h3>
                            </div>
                            <div class="incidentno col-md-2">
                                <h3>Incidents <span>2</span></h3>
                            </div>
                            <div class="batterycapacity col-md-4">
                                <h3>Total Battery Capacity <span>1000</span></h3>
                            </div>
                            <div class="currentcapacity col-md-3">
                                <h3>Current Capacity <span>850</span></h3>
                            </div>
                    	</div>
                    </div>
                    <div class="box box-solid bg-navy">
                        <div class="box-header">
                            <div class="row">
                            	<div class="col-md-2">
                                	<div class="batteryreporthead"> 
                                    	<h2>Battery Report</h2>
                                        <h5>generated on 25082014</h5>
                                    </div>
                                </div>
                                <div class="col-md-5 batteryreportdata">
                                	 <div class="row">
                                         <div class="col-md-6 left">
                                         	<h4><span>Target Customer ID/Tag </span>: DRGroup1</h4>
                                            <h4><span>Total Number of Batteries </span>: 5</h4>
                                         </div>
                                         <div class="col-md-6 right">
                                         	<h4><span>From Time </span>: DDMMYYYY HH:MM:SS </h4>
                                            <h4><span>To Time </span>: DDMMYYYY HH:MM:SS</h4>
                                         </div>
                                     </div>
                                </div>
                                <div class="col-md-1 batteryreportlink">
                                 <div class="top">
                                 	<a href="javascript:void(0);">NEXT DAY <i class="fa fa-arrow-right"></i></a>
                                 </div>
                                 <div class="bottom">
                                 	<a href="javascript:void(0);"><i class="fa fa-arrow-left"></i> PREVIOUS DAY </a>
                                 </div>
                                </div>
                                <div class="col-md-4 batteryreportbutton">
                                     <h3>Legend</h3>
                                     <div class="row">
                                         <div class="col-md-5">
                                            <h5><span class="red"></span>TotalCharge</h5>
                                            <h5><span class="blue"></span>TotalDischarge</h5>
                                         </div>
                                         <div class="col-md-7">
                                            <h5><span class="solidline"></span>Total Capacity</h5>
                                            <h5><span class="dottedline">---- </span>Average Status of Charge(%)</h5>
                                         </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="box-body">
                        	<div class="chart" id="bar-chart01" style="height: 300px;"></div>
                        </div>
                    </div>
                </section>
            </aside>
        </div>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.knob.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/morris.min.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/app.js" type="text/javascript"></script>

    </body>
</html>