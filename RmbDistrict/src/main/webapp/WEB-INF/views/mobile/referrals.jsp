<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title> Add Reference | Rotary Means Business Fellowship Bangalore</title>
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
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front/mobile/css/OwlCarousel.css">
		<script  src="<%= request.getContextPath() %>/resources/front/mobile/js/index.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>		
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
		<script  src="<%=request.getContextPath() %>/resources/front/mobile/js/index.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%= request.getContextPath() %>/resources/front/mobile/mdl/material.js"></script>		
		<%if(session.getAttribute("sitepreference").toString().equalsIgnoreCase("MOBILE")){ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>
		<%}else{ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf.js"></script>
		<%} %>		
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/referrals.js"></script>
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
		form {
	    	display: block;
	    	margin-top: 0em;
	    	box-sizing: border-box;
		}
		.form-group {
		    margin-bottom: 15px;
		}
		* {
		    -webkit-box-sizing: border-box;
		    -moz-box-sizing: border-box;
		    box-sizing: border-box;
		}
		.carousel-inner>.item>a>img, .carousel-inner>.item>img, .img-responsive, .thumbnail a>img, .thumbnail>img {
		    display: block;
		    max-width: 100%;
		    height: auto;
		}	
		img {
	    	border: 0;
		}
		.k-toolbar .k-split-button, span.k-colorpicker, span.k-combobox, span.k-datepicker, span.k-datetimepicker, span.k-dropdown, span.k-numerictextbox, span.k-timepicker {
		    background-image: none;
		    border-radius: 5px !important;
		    border: 1px solid lightgrey !important;
		}	
	</style>
	<body class="homepage" ng-app="rcbs" ng-controller="referralCtrl">
		<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
			<%@include file="header.jsp" %>
			<%@include file="sidebar.jsp" %>
			<main class="mdl-layout__content">
				<div class="mdl-card__title mdl-color--darkblue mdl-color-text--white relative mdl-subheader">
					<a href="<%= request.getContextPath() %>/activities" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
						<i class="material-icons txt-dark">arrow_back</i>
					</a>
					<h2 class="mdl-card__title-text uppercase-font font-18"> Add Reference </h2>
				</div>
				<div class = "mdl-grid">
					<div class="login mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-cell--12-col-phone graybox">						
						<div class="mdl-card mdl-shadow--6dp">
							
							<div class="mdl-card__supporting-text">
								<form>									
									<div class="row">
										<div class="col-xs-12">													
											<div class="form-group">
												<lable>To<font color="red" size="3">*</font></lable>
												<select class="form-control" name="tomemberid" id="tomemberid" ng-model="tomemberid">
													<option value="">Select</option>
													<option ng-repeat="item in getmember" value="{{item.memberId}}" ng-hide="item.memberId == <%= session.getAttribute("loginid") %>">{{item.memberFirstName}} {{item.memberLastName}}</option>
												</select>	
											</div>
										</div>													
									</div>									
									<div class="row">
										<div class="col-xs-12">
											<div class="form-group">
												<lable>Referral<font color="red" size="3">*</font></lable>
												<input type="text" class="form-control" name="referralname" id="referralname" ng-model="referralname">														
											</div>
										</div>
									</div>									
									<div class="row">
										<div class="col-xs-12">
											<div class="form-group">
												<lable>Date<font color="red" size="3">*</font></lable>
												<input class="KendoDate" id="datepicker" ng-model="referdate" title="Refer Date" placeholder="DD/MM/YYYY" style="width: 100%;"/>														
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12">
											<div class="form-group">
												<lable>Close by Date<font color="red" size="3">*</font></lable>
												<input class="KendoDate" id="datepicker2" ng-model="closebydate" title="Close by Date" placeholder="DD/MM/YYYY" style="width: 100%;"/>																									
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12">
											<div class="form-group">
												<lable>Referral Type<font color="red" size="3">*</font></lable><br>
												<label class="radio-inline"><input type="radio" name="optradio" ng-model="referraltype" value="Inside">Inside</label>
												<label class="radio-inline"><input type="radio" name="optradio" ng-model="referraltype" value="Outside">Outside</label>																			
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12">
											<div class="form-group">
												<lable>Connection<font color="red" size="3">*</font></lable><br>
												<label class="checkbox-inline"><input type="checkbox" id="card" ng-model="card" value="Given your card">Given your card</label>
												<label class="checkbox-inline"><input type="checkbox" id="call" ng-model="call" value="Told them you would call">Told them you would call</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12">
											<div class="form-group">
												<lable>Referal Status<font color="red" size="3">*</font></lable>
												<select class="form-control" name="referalstatus" id="referalstatus" ng-model="referalstatus">
													<option value="">--Status--</option>
													<option value="O" selected>Open</option>
													<option value="W">Working</option>
													<option value="C">Close</option>
												</select>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<lable>Approx Value</lable>
												<input type="text" class="form-control" name="apprValue" id="apprvalue" ng-model="apprvalue">
											</div>
										</div>							
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<lable>Email</lable>
												<input type="email" class="form-control" name="referralemail" id="referralemail" ng-model="referralemail">
											</div>
										</div>							
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<lable>Contact Number<font color="red" size="3">*</font></lable>
												<input type="number" class="form-control" name="referralcontactno" id="referralcontactno" ng-model="referralcontactno">
											</div>
										</div>							
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<lable>Address</lable>
												<textarea rows="4" class="form-control" name="referraladdress" id="referraladdress" ng-model="referraladdress"></textarea>
											</div>
										</div>							
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<lable>Comments</lable>
												<textarea rows="4" class="form-control" name="comment" id="comment" ng-model="comment"></textarea>
											</div>
										</div>							
									</div>																										
																		
									<div class="row">
										<div class="col-xs-6">
											<div align="center">
												<button type="submit" onclick="javascript:window.location.reload();" class="btn btn-primary btn-lg btn-block bcgrdcors" style="width: 100%; ">Reset</button>												
											</div>
										</div>
										<div class="col-xs-6">
											<div align="center">												
												<button type="submit" ng-click="saveReferral(flag='save')" class="btn btn-primary btn-lg btn-block bcgrdcor" style="width: 100%; ">Save</button>
											</div>
										</div>										
									</div>
									<div class="row mt-10">
										<div class="col-xs-12">
											<div align="center">
												<button type="submit" ng-click="saveReferral(flag='new')" class="btn btn-primary btn-lg btn-block backgrdclr" style="width: 100%; ">Save & New</button>												
											</div>
										</div>																			
									</div>
								</form>
								
								<%-- <div class="row text-center">
									<div class="col-xs-12 col-md-offset-4 text-center">
										<a href="<%=request.getContextPath() %>/sign_in" class="btn-system btn-large" style="color:green;font-size: 15px;"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Login </a>
									</div>
								</div> --%>
							</div>																					
						</div>						
					</div>
				</div>
			</main>
			
		</div>
		<script>
			$(document).ready(function () {			 		         
		         $("#datepicker,#datepicker2").kendoDatePicker({
		       		format: "dd/MM/yyyy",
					dateInput: true,
					value: new Date()
		         });
		    });
			$(".KendoDate").bind("focus", function(){
	   			$(this).data("kendoDatePicker").open(); 
			});
		</script>
			
	</body>
</html>