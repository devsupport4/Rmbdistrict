<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>  Payment History   | Rotary Means Business Fellowship Bangalore </title>
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/images/favicon.png">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel = "stylesheet" href = "https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front/mobile/css/main.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front/mobile/mdl/css/style.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front/mobile/mdl/material.min.css">		
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-amber.min.css" />
		<link rel = "stylesheet" href = "https://fonts.googleapis.com/icon?family=Material+Icons">
		<link rel="shortcut icon" href="<%= request.getContextPath() %>/resources/front/mobile/images/favicon.ico">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front/mobile/css/OwlCarousel.css">
		<script  src="<%= request.getContextPath() %>/resources/front/mobile/js/index.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>		
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%= request.getContextPath() %>/resources/front/mobile/mdl/material.js"></script>		
		<%if(session.getAttribute("sitepreference").toString().equalsIgnoreCase("MOBILE")){ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>
		<%}else{ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf.js"></script>
		<%} %>		
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/order_history.js"></script>
		<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.common-material.min.css" />
		<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.min.css" />
		<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.mobile.min.css" />
		<script src="https://kendo.cdn.telerik.com/2017.3.1026/js/kendo.all.min.js"></script>
		<!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-153537496-1"></script>
        <script>
              window.dataLayer = window.dataLayer || [];
              function gtag(){dataLayer.push(arguments);}
              gtag('js', new Date());
              gtag('config', 'UA-153537496-1');
         </script>

		<link rel="manifest" href="<%=request.getContextPath() %>/manifest.json">
	</head>
	<style>
	.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 5px;
    line-height: 1.42857143;
    vertical-align: top;
    border-top: 1px solid #ddd;
    font-size:11px;
}
	
	
	</style>
	<body class="homepage" ng-app="rcbs" ng-controller="orderHistoryCtrl" ng-init="getAllOrders(<%= session.getAttribute("memberid")%>)">
		<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
			<%@include file="header.jsp" %>
			<%@include file="sidebar.jsp" %>
			<main class="mdl-layout__content">
				<div class="mdl-card__title mdl-color--darkblue mdl-color-text--white relative mdl-subheader">
					<a href="<%= request.getContextPath() %>/" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
						<i class="material-icons txt-dark">arrow_back</i>
					</a>
					<h2 class="mdl-card__title-text uppercase-font font-18">Payment History </h2>
				</div>
				<div class="page-content">
					<div class="mdl-layout mdl-js-layout">
						<section class="club-detail">
							<div class="page-content club-detail panel-body">
								<section id="News-All">											
									<div class="row">												
										<div class="col-xs-5" style="padding:5px;">
											<input class="KendoDate" id="datepicker" ng-model="fromdate" title="Select From Date" placeholder="DD/MM/YYYY" style="width: 100%;"/>
										</div>
										<div class="col-xs-5" style="padding:5px;">
											<input class="KendoDate" id="datepicker1" ng-model="todate" title="Select To Date" placeholder="DD/MM/YYYY" style="width: 100%;"/>
										</div>
										<div class="col-xs-2" style="padding-top:6px; padding-left:2px;">
											<button type="submit" class="btn btn-primary"  style="margin-top: 0px; background-color: #005daa;" ng-click="getOrdersByDate()"> <i class="fa fa-search"></i></button>													
										</div>																							
									</div>																																																										
									<div class="clearfix"> </div>																									
								</section>
								<div class="col-xs-12" style="padding:5px;">
										<section id="News-All">
											
											<div class="row">
												<div class="col-xs-12" style="padding:5px;">
													<div class="">
														<table class="table table-stripped">
															<thead>
																<tr>
																	<th>Date</th>
																	<th>Event Title</th>
																	<th>Amount</th>
																	<th>Status</th>
																</tr>
															</thead>
															<tbody>
																<tr ng-repeat="item in OrdHist = (getOrders | filter:{memberId: <%= session.getAttribute("memberid")%>}:true)">																	
																	<td>{{item.registrationDate}}</td>
																	<td>{{item.eventTitle}}</td>
																	<!-- <td >{{item.bankReferenceNumber}}</td> -->
																	<td >{{item.amount |number:2}}<br></td>
																	<td ng-show="item.paymentStatu=='Success'">Paid</td>
																	<td ng-show="item.payReq == 'No' || (item.amount == '0.00' && item.paymentStatu == 'Paid') ">Free Event</td>
																	<td ng-hide="item.payReq == 'No' || (item.amount == '0.00' && item.paymentStatu == 'Paid' || item.paymentStatu=='Success')">{{item.paymentStatu}}</td>
																</tr>
															</tbody>
														</table>
														<h4  ng-if="OrdHist==''" style="text-align:center">No Data Found....</h4>
													</div>
												</div>													
											</div>																																																										
											<div class="clearfix"> </div>																									
										</section>
									</div>
								
								
								
								
							</div>
						</section>
						<script>
							$(document).ready(function () {			 		         
						         $("#datepicker, #datepicker1").kendoDatePicker({
						       		format: "dd/MM/yyyy",
									dateInput: true					
						         });		         
						    });
							$(".KendoDate").bind("focus", function(){
					  			$(this).data("kendoDatePicker").open(); 
							});
						</script>
					</div>
				</div>
			</main>
		</div>
		
	</body>
</html>