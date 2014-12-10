<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>DRMS</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/css/app.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/css/nv.d3.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="skin-blue bg">
        <%@include file="header.jsp" %>
        <div class="wrapper row-offcanvas row-offcanvas-left">
           <%@include file="sidemenu.jsp" %>
            <aside class="right-side">                
                <section class="content-header">
                    
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-home"></i> > Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>

                <section class="content">
					<!-- Dummy Data -->
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
						<!-- Dummy Data -->
					<div class="row">
                    		
                            <style>
							#chart svg {
							  height: 400px;
							}
							</style>
							<div class="dashboardMapsec col-md-7">
                            	<div class="box box-solid box-info">
                                	<div class="box-header">
                                    	<h3 class="box-title box-title-icon grData">Graphical representation of data</h3>
                                    </div>
                                    <div class="box-body chart-responsive">
                                  	<div id="chart"><svg></svg></div>
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
        <script src="${pageContext.request.contextPath}/resources/js/jquery.knob.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/morris.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/js/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/app.js" type="text/javascript"></script>
        
        <script src="http://nvd3.org/assets/lib/d3.v3.js" ></script>
        <script src="${pageContext.request.contextPath}/resources/js/nv.d3.min.js" type="text/javascript"></script>
        
        <script>

   

        jsonString = "";
	        <c:if test="${not empty ReportList}">	
	        		i = 0;	 
	        		space = "";		
					<c:forEach var="listValue" items="${ReportList}">
						if(jsonString != "")
						{
							jsonString = jsonString + ',';
						}
						mkrDateTime = '${listValue.mkrDate}';
						mkrTime = mkrDateTime.split(' ')[1].substring(0,2);
						
						if( (i % 2) != 0)
						{
							space = space + " ";
							mkrTime = space;
						}
						
						jsonString = jsonString + '{' + 
									'"label" : "' + mkrTime + '", ' + 
									'"value" : ' + ${listValue.totalCharge} + ', ' + 
									'"color" : "#585858" ' + 
									' }';

						jsonString = jsonString + ',' + '{' + 
									'"label" : "' + mkrTime + '", ' + 
									'"value" : ' + ${-1 * listValue.totalDischarge} + ', ' + 
									'"color" : "#d10b48" ' + 
									' }'; 
				                
				        i = i + 1;
					</c:forEach>		 
			
				finalJSON = ' [ {' +
				           '"key": "Cumulative Return",' +
				           '"values": [' +jsonString + ']}]';
		    //       alert(finalJSON);
		      //     alert(JSON.parse(finalJSON));
				nv.addGraph(function() {
					  var chart = nv.models.discreteBarChart()
					    .x(function(d) { return d.label })
					    .y(function(d) { return d.value })
					    .staggerLabels(true)
					    .tooltips(true)
					    .showValues(false);

					  chart.xAxis.axisLabel('Hours');
					  chart.yAxis.axisLabel('Kilo Watt').axisLabelDistance(25);
					  
					 

					
					  /*$('rect.discreteBar').attr('transform', 'translate(17)').attr('width', 20);
					  $(.nv-axis g text').attr('transform', 'translate(0, 5)') ; */

						data = JSON.parse(finalJSON);
						
						
					  d3.select('#chart svg')
					    .datum(data)
					    .transition().duration(500)
					    .call(chart);
	
					  nv.utils.windowResize(chart.update);
	
					  return chart;
					});
			</c:if>	
        
        </script>
        
        
        <style>
        	.dashboardMapsec, #chart svg {
			    width: 100%;
			}
        </style>

    </body>
</html>