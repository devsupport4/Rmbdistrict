<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title> My Dashboard </title>

<!-- fonts-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front2/font-awesome-4.7.0/css/font-awesome.min.css"> 

<!-- styles-->
<link href="<%=request.getContextPath() %>/resources/front2/css/sb-admin-2.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/front2/css/style.css" rel="stylesheet">



<script src="<%=request.getContextPath() %>/resources/front2/js/slimselect.min.js"></script>
<link href="<%=request.getContextPath() %>/resources/front2/css/slimselect.min.css" rel="stylesheet"></link>


<!-- Responsive -->
<link href="<%=request.getContextPath() %>/resources/front2/css/responsive.css" rel="stylesheet">


<!--***datetimepicker****-->
<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2018.1.221/styles/kendo.common-material.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front2/datetimepicker/css/kendo.material.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front2/datetimepicker/css/kendo.material.mobile.min.css" />
<!--<script src="https://kendo.cdn.telerik.com/2018.1.221/js/jquery.min.js"></script>-->
<script src="<%=request.getContextPath() %>/resources/front2/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/front2/datetimepicker/js/kendo.all.min.js"></script>

		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>		
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/member_profile.js"></script>

</head>

<body id="page-top" ng-app="rcbs" ng-controller="memberProfileCtrl" ng-cloak ng-init="getMemberDetailById(<%= session.getAttribute("loginid") %>) || MeetingCount(<%= session.getAttribute("loginid") %>) || RefferalCount(<%= session.getAttribute("loginid") %>) || RefferalCountRecievd(<%= session.getAttribute("loginid") %>) || getCountBusiness(<%= session.getAttribute("loginid") %>)">
<%@include file="header1.jsp" %>
<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->
<!--
<div class="d-sm-flex align-items-center justify-content-between mb-4">
<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
<a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
</div>
-->




<div class="row">

<div class="col-lg-12">

<!-- Dropdown Card Example -->
<div class="card shadow mb-4">
<!-- Card Header - Dropdown -->
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">


<h5 class="m-0 font-weight-bold text-darkblue">  Profile </h5>

<div class="dropdown no-arrow">
<a class="dropdown-toggle"  href="<%=request.getContextPath() %>/manage_my_profile" >
<i class="fa fa-pencil fa-sm fa-fw text-gray-400">
</i>
</a>


</div>
</div>
<!-- Card Body -->
<div class="card-body">
<!--Dropdown menus can be placed in the card header in order to extend the functionality of a basic card. In this dropdown card example, the Font Awesome vertical ellipsis icon in the card header can be clicked on in order to toggle a dropdown menu.-->



<div class="row">

<div style="padding-left: 0px;" class="col-sm-4 col-xs-6">
<ul class="users-list clearfix">
<li>
<img alt="'<%=session.getAttribute("membername") %>'"  style="    height: 169px; width: 211px;"   src="{{getmemberdetail.{{getmemberdetail.memberProfilePicture}}}}"  onerror="this.onerror=null; this.src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'" >
<!-- <img src="{{getmemberdetail.memberProfilePicture}}"> -->
</li>
<li>

<!-- <img src="{{getmemberdetail.companyLogo}}">
 -->
	<img alt="'<%=session.getAttribute("membername") %>'"  style="    height: 169px; width: 211px;"   src="{{getmemberdetail.companyLogo}}"  onerror="this.onerror=null; this.src='<%=request.getContextPath() %>/resources/front2/img/companylogo.png'" >
	<%-- <img alt="'<%=session.getAttribute("membername") %>'"  src="<%=request.getContextPath() %>/resources/front2/img/companylogo.png"> --%>
		<!--  ng-if="!getmemberdetail.companyLogo"	 ng-if="getmemberdetail.companyLogo"	onerror="this.onerror=null;  this.src='<%=request.getContextPath() %>/resources/front2/img/companylogo.png'"-->		
</li>
</ul>
</div>

<div style="padding-left: 0px" class="col-sm-4 col-xs-6">
<div class="description-block ">
<ul class="list-group">
<li class="list-group-item"><i class="fa fa-user-o" aria-hidden="true"></i> Rtn.  {{getmemberdetail.memberFirstName}} {{getmemberdetail.memberMiddleName}} {{getmemberdetail.memberLastName}}</li>
<li class="list-group-item"><i class="fa fa-building-o" aria-hidden="true"></i> {{getmemberdetail.memberCompanyName}}  </li>
<li class="list-group-item"><i class="fa fa-briefcase" aria-hidden="true"></i> {{getmemberdetail.memberDesignation}} </li>
<li class="list-group-item"><i class="fa fa-envelope-o" aria-hidden="true"></i> {{getmemberdetail.memberEmail}} </li>
<li class="list-group-item"><i class="fa fa-phone" aria-hidden="true"></i> {{getmemberdetail.memberMobileNumber}} </li>
</ul>
</div>
<!-- /.description-block -->
</div>




</div>


</div>


</div>

</div>

</div>


<!-- Given Card Row -->
<div class="row">
<div class="col-lg-12">

<!-- Approach -->
<div class="card ">

<!-- Card Header -->
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

<h5 class="m-0 font-weight-bold text-darkblue">  Given </h5>


<form class="form-inline" action="#">
<div class="row">

<div class="col-lg-6">
<label for="email">From:</label>
<input id="datetimepicker" title="datetimepicker" style="width: 80%;" />
</div>

<div class="col-lg-6">
<label for="pwd">To:</label>
<input id="todatetimepicker" title="todatetimepicker" style="width: 80%;" />
</div>


</div>
</form>
</div>



<div class="card-body">
<div class="row">



<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="card card-stats">
<div class="card-header card-header-warning card-header-icon">
<div class="card-icon">
<a href="<%=request.getContextPath() %>/member_meeting_list"> 
<i class="fa fa-handshake-o text-white"></i>
</a>
</div>

<p class="card-category mb-10"><a href="<%=request.getContextPath() %>/member_meeting_list"> R2R Meetings </a></p>
<h3 style="font-size: 42px; font-weight: 700;" class="card-title">
<a href="<%=request.getContextPath() %>/member_meeting_list"> {{meetingcount.given_meetingcount}} </a>
</h3>
</div>

<div class="card-footer">
<a href="<%=request.getContextPath() %>/member_meeting_list" data-toggle="modal" data-target="#AddMeetingsModal" class="btn btn-add btn-block">
<span class="text">  Add New R2R Meetings </span>
</a>


</div>



</div>
</div>

<!--<div class="col-lg-3 col-md-6 col-sm-6">
<div class="card card-stats">
<div class="card-header card-header-warning card-header-icon">
<div class="card-icon">
<i class="fa fa-handshake-o" aria-hidden="true"></i>
</div>
<p class="card-category mb-10"> R2R Meetings </p>

<h3 class="card-title"> 49/50
<small>GB</small>
</h3>

</div>
<div class="card-footer">
<div class="stats">
<a href="javascript:;">Get More Space...</a>
</div>
</div>
</div>
</div>-->

<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="card card-stats">
<div class="card-header card-header-success card-header-icon">
<div class="card-icon">

<a href="<%=request.getContextPath() %>/member_reference" style="color: white;"> 
<i class="fa fa-exchange fa-2x"></i>
</a>
</div>
<p class="card-category mb-10" > <a href="<%=request.getContextPath() %>/member_reference" >  References Given </a> </p>
<h3  style="font-size: 42px; font-weight: 700;" class="card-title"> {{refferalcount.refferencecount}} </h3>
</div>

<div class="card-footer">
<a href="<%=request.getContextPath() %>/referrals"  data-toggle="modal" data-target="#AddRefferalModel" class="btn btn-add btn-block">
<span class="text">  Add New REFERENCE </span>
</a>


</div>


</div>
</div>

<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="card card-stats">
<div class="card-header card-header-info card-header-icon">
<div class="card-icon">
<i class="fa fa-inr fa-2x" aria-hidden="true"></i>
</div>
<p class="card-category mb-10"> Business Given </p>
<h3 style="font-size: 42px; font-weight: 700;" class="card-title"> <small>₹</small> {{getCountBusinessdata.Businessgiven}} </h3>
</div>
<div class="card-footer">
	<a href="#"  data-toggle="modal" data-target="#AddBusiness" class="btn btn-add btn-block">
	<span class="text">  Add Business </span>
	</a>
</div>

</div>
</div>


</div>
</div>

</div>

</div>
</div>




<!-- Received Card Row -->
<div class="row">
<div class="col-lg-12 mb-4">    

<!-- Approach -->
<div class="card  mb-4 mt-10">

<!-- Card Header -->
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

<h5 class="m-0 font-weight-bold text-darkblue">  Received </h5>

<form class="">
<div class="row">



<div style="background-color: transparent" id="example" class="col-lg-1 col-md-4 col-sm-12 col-xs-12 demo-section k-content text-right pr-0">
<label style="line-height: 37px;"> From </label>
</div>

<div style="background-color: transparent"  id="example" class="col-lg-5 col-md-4 col-sm-12 col-xs-12 demo-section k-content">
<img class="img-responsive" src="img/date.jpg"/>
</div>


<div style="background-color: transparent" id="example" class="col-lg-1 col-md-4 col-sm-12 col-xs-12 demo-section k-content text-right pr-0">
<label style="line-height: 37px;"> To </label>
</div>

<div style="background-color: transparent"  id="example" class="col-lg-5 col-md-4 col-sm-12 col-xs-12 demo-section k-content">
<img class="img-responsive" src="img/date.jpg"/>
</div>



</div>

</form>

<!--<h5 class="m-0 font-weight-bold text-darkblue">  Given </h5>

<div class="">
<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
From Date
</button>

<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
To Date
</button>
</div>-->

</div>



<div class="card-body">
<div class="row">



<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="card card-stats">
<div class="card-header card-header-danger card-header-icon">
<div class="card-icon">
<i class="fa fa-bell-o" aria-hidden="true"></i>
</div>
<p class="card-category mb-10"> Alerts </p>
<h3 style="font-size: 42px; font-weight: 700;" class="card-title"> 07 </h3>
</div>

<div class="card-footer">
<a href="#" class="btn btn-add btn-block">
<span class="text">  Show All Alerts </span>
</a>

<!--<div class="stats">
<a href="#"><i class="fa fa-plus"></i> Add new R2R Meetings </a>
</div>-->
</div>

</div>
</div>


<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="card card-stats">
<div class="card-header card-header-success card-header-icon">
<div class="card-icon">
<i class="fa fa-long-arrow-down fa-2x" aria-hidden="true"></i>

</div>
<p class="card-category mb-10"> References Received </p>
<h3  style="font-size: 42px; font-weight: 700;" class="card-title"> {{getCountRefferalReciedcount.refferal_recevied}} </h3>
</div>

<div class="card-footer">
<a href="<%=request.getContextPath() %>/member_referrals" class="btn btn-add  btn-block">
<span class="text"> Show All References </span>
</a>
</div>

</div>
</div>

<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="card card-stats">
<div class="card-header card-header-info card-header-icon">
<div class="card-icon">
<i class="fa fa-inr fa-2x"></i>
</div>
<p class="card-category mb-10"> Business Received </p>
<h3 style="font-size: 42px; font-weight: 700;" class="card-title"> <small>₹</small> {{getCountBusinessdata.Businessreceived}} </h3>
</div>
<div class="card-footer">
<a href="<%=request.getContextPath() %>/meber_business_received" class="btn btn-add  btn-block">
<span class="text">   Show All Business Received  </span>
</a>
</div>
</div>
</div>


</div>
</div>

</div>

</div>
</div>





<!--  Chapter Summary Card Row -->
<div class="row">
<div class="col-lg-12 mb-4">    

<!-- Approach -->
<div class="card  mb-4 mt-10">

<!-- Card Header -->
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

<h5 class="m-0 font-weight-bold text-darkblue">  Chapter Summary </h5>

<form class="">
<div class="row">



<div style="background-color: transparent" id="example" class="col-lg-1 col-md-4 col-sm-12 col-xs-12 demo-section k-content text-right pr-0">
<label style="line-height: 37px;"> From </label>
</div>

<div style="background-color: transparent"  id="example" class="col-lg-5 col-md-4 col-sm-12 col-xs-12 demo-section k-content">
<img class="img-responsive" src="img/date.jpg"/>
</div>


<div style="background-color: transparent" id="example" class="col-lg-1 col-md-4 col-sm-12 col-xs-12 demo-section k-content text-right pr-0">
<label style="line-height: 37px;"> To </label>
</div>

<div style="background-color: transparent"  id="example" class="col-lg-5 col-md-4 col-sm-12 col-xs-12 demo-section k-content">
<img class="img-responsive" src="img/date.jpg"/>
</div>



</div>

</form>

</div>



<div class="card-body">
<div class="row">




<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="card card-stats">
<div class="card-header card-header-warning card-header-icon">
<div class="card-icon">
<i class="fa fa-handshake-o" aria-hidden="true"></i>
</div>
<p class="card-category mb-10"> R2R Meetings </p>
<h3 style="font-size: 42px; font-weight: 700;" class="card-title"> 27 </h3>
</div>

<div class="card-footer">
<a href="<%=request.getContextPath() %>/chapter_summary_meeting" class="btn btn-add btn-block">
<span class="text"> Show All R2R Meetings </span>
</a>

<!--<div class="stats">
<a href="#"><i class="fa fa-plus"></i> Add new R2R Meetings </a>
</div>-->
</div>

</div>
</div>



<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="card card-stats">
<div class="card-header card-header-success card-header-icon">
<div class="card-icon">
<i class="fa fa-exchange fa-2x"></i>


</div>
<p class="card-category mb-10"> References  </p>
<h3  style="font-size: 42px; font-weight: 700;" class="card-title"> 126 </h3>
</div>

<div class="card-footer">
<a href="<%=request.getContextPath() %>/chapter_summary_reference" class="btn btn-add  btn-block">
<span class="text"> Show All References </span>
</a>
</div>

</div>
</div>

<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="card card-stats">
<div class="card-header card-header-info card-header-icon">
<div class="card-icon">
<i class="fa fa-inr fa-2x"></i>
</div>
<p class="card-category mb-10"> Business  </p>
<h3 style="font-size: 42px; font-weight: 700;" class="card-title"> <small>₹</small> 13,0215 </h3>
</div>
<div class="card-footer">
<a href="<%=request.getContextPath() %>/chapter_summary_business" class="btn btn-add  btn-block">
<span class="text">   Show All Business   </span>
</a>
</div>
</div>
</div>


</div>
</div>

</div>

</div>
</div>




</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
<footer class="sticky-footer bg-white">
<div class="container my-auto">
<div class="copyright text-center my-auto">

<span>Content Copyright &copy; Bhargav Bhatt. All rights reserved. </span> &nbsp; |  &nbsp;
<span> Powered by: <a href="https://www.myclubman.com/" style="color: #858796;" target="_blank"> MyClubman.com </a></span>
</div>
</div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->



<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
<i class="fas fa-angle-up"></i>
</a>






<!--  Add New R2R Meetings Modal-->
<div class="modal fade" id="AddMeetingsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<%@include file="member_meeting.jsp" %>
</div>


<!--  Add New AddRefferalModel Modal-->
<div class="modal fade" id="AddRefferalModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<%@include file="referrals.jsp" %>
</div>

<!--  Add Business Modal-->
<div class="modal fade" id="AddBusiness" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<%@include file="thankyou_slip.jsp" %>
</div>






<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
<button class="close" type="button" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">×</span>
</button>
</div>
<div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
<div class="modal-footer">
<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
<a class="btn btn-primary" href="login.html">Logout</a>
</div>
</div>
</div>
</div>






<!-- Bootstrap core JavaScript-->

<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>-->
<script src="<%=request.getContextPath() %>/resources/front2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<!--<script src="vendor/jquery-easing/jquery.easing.min.js"></script>-->


<!---->
<script src="<%=request.getContextPath() %>/resources/front2/js/main.js"></script>

<!-- Custom scripts for all pages-->
<!--<script src="js/sb-admin-2.min.js"></script>-->



<!-- Page level plugins -->
<!--
<script src="vendor/chart.js/Chart.min.js"></script>

-->


<!-- Page level custom scripts -->
<!--<script src="js/demo/chart-area-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>-->


<!-- Page level custom scripts this js for Date and time id's function -->
<script src="<%=request.getContextPath() %>/resources/front2/js/kendo-function.js"></script>   



<!--***********************************-->
<!--<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>-->

<!-- <script>
$('.select2').select2();
</script>
 -->



<script>
/***************** Dropdown Search & Select Strat ***********************/
$(document).ready(function() {
var x = new SlimSelect({
select: '#demo'
});
});



$(document).ready(function() {
var x = new SlimSelect({
select: '#demo1'
});
});

$(document).ready(function() {
	var x = new SlimSelect({
	select: '#tomemberid'
	});
	});
	
$(document).ready(function() {
	var x = new SlimSelect({
	select: '#referraltype'
	});
	});
$(document).ready(function() {
	var x = new SlimSelect({
	select: '#referalstatus'
	});
	});

/***************** Dropdown Search & Select End ***********************/

</script>


<script>

</script>

</body>


</html>
