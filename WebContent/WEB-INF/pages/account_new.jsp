<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DRMS</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.servletContext.contextPath}/resources/css/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.servletContext.contextPath}/resources/css/app.css" rel="stylesheet" type="text/css" />

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script> 
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="${pageContext.servletContext.contextPath}/resources/js/jquery.dataTables.js" type="text/javascript"></script> 
<script src="${pageContext.servletContext.contextPath}/resources/js/dataTables.bootstrap.js" type="text/javascript"></script> 
<script src="${pageContext.servletContext.contextPath}/resources/js/app.js" type="text/javascript"></script>

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
        <li class="active">New Administrator Creation</li>
      </ol>
    </section>
    <section class="content">
      <div class="box box-solid box-primary">
        <div class="box-header">
          <h4>New Administrator Creation</h4>
        </div>
        <div class="box-body box-body01">
        
        <form name="userform" id="userform" enctype="multipart/form-data">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">Administrator User Name </div>
                  <input type="text" class="form-control" name="userName" id="userName" placeholder="Enter User Name">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">First Name </div>
                  <input type="text" class="form-control" name="firstName" id="firstName"   placeholder="Enter First Name">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">Family Name </div>
                  <input type="text" class="form-control" name="lastName" id="lastName"  placeholder="Enter Family Name">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">Contact (Tel)</div>
                  <input type="text" class="form-control" name="phoneNumber" id="phoneNumber"  placeholder="Enter Contact no">
                </div>
              </div>
              <div class="btn-bar">
                <button type="button" class="btn btn-primary lftCorner" onClick="location.href='accounts'"><i class="fa fa-long-arrow-left"></i>Back</button>
                <button type="submit" class="btn btn-primary rgtCorner">Submit</button>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">Email (UserID)</div>
                  <input type="email" class="form-control" name="emailId" id="emailId"  placeholder="Enter Email">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">Password</div>
                  <input type="password" class="form-control" name="password" id="password"  required placeholder="Enter Password">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">Confirm Password</div>
                  <input type="password" class="form-control" name="repassword" id="repassword"  placeholder="Re-Enter Password">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon" >Status</div>
                  <select class="form-control" name="accountStatus" id="accountStatus" >
                    <option>Select Status</option>
                    <option value="A">Active</option>
                    <option value="I">Inactive</option>
                  </select>
                </div>
              </div>
              
              
            </div>
          </div>
		  </form>
          </div>
          <!-- /.box-body -->
    
      </div>
      <!-- /.box --> 
          
    </section>
    <!-- /.content --> 
  </aside>
  <!-- /.right-side --> 
</div>
<!-- Account Creation Result Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel">Confirmation</h4>
	  </div>
	  <div class="modal-body" id="result">
	  </div>
	  <div class="modal-footer">
		<button type="button" onClick="javascript:closeWindow()" class="btn btn-primary">Close</button>
	  </div>
	</div>
  </div>
</div>
<!-- Account Creation Result Modal -->
<script language="JavaScript">

	$(document).ready(function(){   
		//Program a custom submit function for the form
		$("#userform").submit(function(event){
			alert('xxx');
		  //disable the default form submission
			event.preventDefault();
			alert('2');
		  //grab all form data  
			//var formData = new FormData($(this)[0]);
		    var jsonData = {};
			$("#userform").serializeArray().map(function(x){jsonData[x.name] = x.value;});
			alert(jsonData);
			var token = $("meta[name='_csrf']").attr("content");
		    var header = $("meta[name='_csrf_header']").attr("content");
			
			alert(header+" : "+ token);
			alert(JSON.stringify(jsonData));
			$.ajax({
				url : "createAccount",
			
				data : JSON.stringify(jsonData),
				beforeSend: function(xhr) {
		            // here it is
		            xhr.setRequestHeader(header, token);
		        },
				type : "POST",				
				async: false,
				cache: false,
				contentType: "application/json",
				processData: false,
				success : function(response) {
					$("#result").text(response); 
					$('#myModal').modal('show');
				},
				error : function(xhr, status, error) {
					alert(xhr.responseText);
				}
			});
			return false;
		});
	});

	function closeWindow() {
		$('#myModal').modal('hide');
	}
</script>

</body>
</html>