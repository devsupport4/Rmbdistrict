<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<title> My Reference | Rotary Means Business Fellowship Bangalore </title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="<%=request.getContextPath() %>/resources/front1/css/bootstrap.min.css" rel="stylesheet">	
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/resources/front1/css/animate.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/resources/front1/css/prettyPhoto.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/resources/front1/css/main.css" rel="stylesheet">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/wall.css">
		<link href="<%=request.getContextPath() %>/resources/front/css/responsive.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet">
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front1/images/favicon.png">
		<script src="<%=request.getContextPath() %>/resources/front1/js/jquery.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front1/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front1/js/jquery.prettyPhoto.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front1/js/jquery.isotope.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front1/js/main.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front1/js/wow.min.js"></script>		
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
		<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/64754/autosize.min.js'></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>		
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/my_reference.js"></script>
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-153537496-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'UA-153537496-1');

        </script>
             <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/style.css">

		<style>
				
				.navbar-nav {
						    float: right !important;
						    margin: 0;
						}
							
			#foo,#cover{
				height: 180px;
				overflow: hidden;
				background: #fff;
				display: inline-block;
				vertical-align: top;
				margin-bottom: 8px;
			}
			img{
				max-width: 100%;
				height: auto;
			}
			#cover{
				background-size:cover;
				background-position:50% 50%;
			}
			.navbar{
	margin-bottom: 0px  !important;
}
		</style>			
	</head>
	<body ng-app="rcbs" ng-controller="myReferenceCtrl" ng-init="getreference(<%= session.getAttribute("loginid")%>)" ng-cloak>	
		<%@include file="header.jsp" %>
		<br><br>
		<%-- <div class="first-widget parallax" id="blog">
			<div class="parallax-overlay">
				<div class="container pageTitle">
					<div class="row">
						<div class="col-md-6 col-sm-6"></div>
						<div class="col-md-6 col-sm-6 text-right">
							<span class="page-location"><a href="<%=request.getContextPath() %>/">Home</a> /  My Reference Detail  </span>
						</div>
					</div>
				</div>
			</div>
		</div> --%>
		<section class="bg-banner">
			<div class="banner-bottom-bg single-bg">
				<div class="banner-bg">
					<div class="container">
						<div class="banner">
							<div class="banner-grids">
								<div class="banner-middle">
									<div class="row">
										<div class="board">
											<div class="board-inner">
												<ul class="nav nav-tabs" id="myTab">
													<div class="liner"></div>
													<li class="disabled">
														<a href="#membership" data-toggle="tab" title="MEMBERSHIP">
															<span class="round-tabs one">
																<i class="glyphicon glyphicon-home"></i>
															</span>
														</a>
													</li>
													<li class="disabled">
														<a href="#" data-toggle="tab" title="CONTACT DETAILS">
															<span class="round-tabs two">
																<i class="glyphicon glyphicon-gift"></i>
															</span>
														</a>
													</li>
													<li class="disabled">
														<a href="#spouse" data-toggle="tab" title="FAMILY DETAILS">
															<span class="round-tabs three">
																<i class="glyphicon glyphicon-comment"></i>
															</span>
														</a>
													</li>							
													<li class="active">
														<a href="#references" data-toggle="tab" title="REFERENCES">
															<span class="round-tabs five">
																<i class="glyphicon glyphicon-ok"></i>
															</span>
														</a>
													</li>
													<li class="disabled">
														<a href="#payments" data-toggle="tab" title="PAYMENTS">
															<span class="round-tabs four">
																<i class="glyphicon glyphicon-comment"></i>
															</span>
														</a>
													</li>
												</ul>
											</div>
											<div class="tab-content">
												<div class="tab-pane fade in active" id="references">
													<div class="col-md-12">
														<div class="panel panel-default">
															<div class="panel-heading" style="border-top: 2px solid blue; background: -webkit-gradient(linear, left bottom, left top, color-stop(0, #e2e2e2), color-stop(1, #fafafa));">
																<div class="row" style="color: #333;">
																	<div class="col-md-2">
																		<div class="panel-title2"> References  </div>
																	</div>
																	<div class="col-md-4">
																		<input type="text" value="{{memberfirstname}} {{membermiddlename}} {{memberlastname}}" disabled="disabled" class="form-control input-lg2" placeholder="Old Membership No"/>
																	</div>
																	<div class="col-md-2">
																		<input type="text" disabled="disabled" ng-model="membershipnumber" class="form-control input-lg2" placeholder="Membership No" data-toggle="tooltip" title="New Membership No." />
																	</div>												
																	<div class="col-md-2 text-right">
																		
																		<div class="modal fade" id="addReferencesModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
																			<div class="modal-dialog">
																				<div class="modal-content">
																					<form ng-submit="addreference(2)">
																						<div class="modal-header">
																							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">X</span><span class="sr-only">Close</span></button>
																							<h3 class="modal-title" id="lineModalLabel"> ADD REFRENCE INFO </h3>
																						</div>
																						<div class="modal-body">
																							<div class="panel-group" id="accordion">
																								<div class="panel panel-default">
																									<div class="panel-heading" style="border-top: 2px solid blue;; background: -webkit-gradient(linear, left bottom, left top, color-stop(0, #e2e2e2), color-stop(1, #fafafa));">
																										<h4 class="panel-title" style="color: #333;">
																											<a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Existing Member?</a>
																										</h4>
																									</div>
																									<div id="collapse1" class="panel-collapse collapse in">
																										<div class="panel-body">
																											<div class="row">
																												<div class="col-md-3">
																												</div>
																												<div class="col-md-6 text-center">
																													<div class="form-group">																									
																														<select id="memberid" name="memberid" ng-model="memberid" class="form-control" ng-disabled="getmember == null">
																															<option value="">Select Member</option>
																															<option ng-repeat="item in getmember | orderBy : 'memberFirstName'" value="{{item.memberId}}">{{item.memberFirstName}} {{item.memberMiddleName}} {{item.memberLastName}}</option>
																														</select>
																														<i class="fa fa-refresh fa-spin fa-3x fa-fw" ng-hide="totalcount != 0"></i>
																														<span class="sr-only">Loading...</span>
																													</div>
																												</div>
																												<div class="col-md-3">
																												</div>
																											</div>
																										</div>
																									</div>
																								</div>
																								<div class="panel panel-default">
																									<div class="panel-heading" style="border-top: 2px solid blue;; background: -webkit-gradient(linear, left bottom, left top, color-stop(0, #e2e2e2), color-stop(1, #fafafa));">
																										<h4 class="panel-title" style="color: #333;">
																											<a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Not An Existing Member?</a>
																										</h4>
																									</div>
																									<div id="collapse2" class="panel-collapse collapse">
																										<div class="panel-body">
																											<div class="row">
																												<div class="col-md-6">
																													<div class="input-group form-group">
																														<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
																														<input type="text" id="firstname" name="firstname" ng-model="firstname" class="form-control input-lg1" placeholder="First Name*" capitalize-first>
																													</div>
																												</div>
																												<div class="col-md-6">
																													<div class="input-group form-group">
																														<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
																														<input type="text" id="lastname" name="lastname" ng-model="lastname" class="form-control input-lg1" placeholder="Last Name*" capitalize-first>
																													</div>
																												</div>
																											</div>
																											<div class="space15"></div>
																											<div class="row">
																												<div class="col-md-6">
																													<div class="input-group form-group">
																														<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
																														<input type="text" id="email" name="email" ng-model="email" class="form-control input-lg1" placeholder="Email*">
																													</div>
																												</div>
																												<div class="col-md-6">
																													<div class="input-group form-group">
																														<span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
																														<input type="text" id="mobilenumber" name="mobilenumber" ng-model="mobilenumber" class="form-control input-lg1" placeholder="Mobile*" disallow-spaces>
																													</div>
																												</div>
																											</div>
																											<div class="space15"></div>
																											<div class="row">
																												<div class="col-md-6">
																													<div class="form-group">
																														<input type="text" id="address1" name="address1" ng-model="address1" class="form-control input-lg1" placeholder="Address-1" capitalize-first>
																													</div>
																												</div>
																												<div class="col-md-6">
																													<div class="form-group">
																														<input type="text" id="address2" name="address2" ng-model="address2" class="form-control input-lg1" placeholder="Address-2" capitalize-first>
																													</div>
																												</div>
																											</div>
																											<div class="space15"></div>
																											<div class="row">
																												<div class="col-md-6">
																													<div class="form-group">
																														<select id="countryname" name="countryname" ng-model="countryname" ng-options="item.countryId as item.countryName for item in getcountry" ng-change="onCountryChange()" class="form-control input-lg2">
																															<option value="">Select Country</option>
																														</select>
																													</div>
																												</div>
																												<div class="col-md-6">
																													<div class="form-group">
																														<select id="statename" name="statename" ng-model="statename" ng-options="item.stateId as item.stateName for item in getrelatedstate" class="form-control input-lg2">
																															<option value="">Select State</option>
																														</select>
																													</div>
																												</div>
																											</div>
																											<div class="space15"></div>
																											<div class="row">
																												<div class="col-md-6">
																													<div class="form-group">
																														<input type="text" id="cityname" name="cityname" ng-model="cityname" class="form-control input-lg1" placeholder="City Name" capitalize-first>
																													</div>
																												</div>
																												<div class="col-md-6">
																													<div class="form-group">
																														<input type="text" id="pincode" name="pincode" ng-model="pincode" class="form-control input-lg1" placeholder="Pincode" disallow-spaces>
																													</div>
																												</div>
																											</div>
																											<div class="space15"></div>
																											<div class="row">
																												<div class="col-md-6">
																													<div class="form-group">
																														<input type="text" id="companyname" name="companyname" ng-model="companyname" class="form-control input-lg1" placeholder="Comapany Name" capitalize-first>
																													</div>
																												</div>
																												<div class="col-md-6">
																													<div class="form-group">
																														<input type="text" id="occupation" name="occupation" ng-model="occupation" class="form-control input-lg1" placeholder="Occupation" capitalize-first>
																													</div>
																												</div>
																											</div>
																										</div>
																									</div>
																								</div>
																							</div>
																						</div>
																						<div class="modal-footer">
																							<div class="btn-group btn-group-justified" role="group" aria-label="group button">
																								<div class="btn-group" role="group">
																									<input type="submit" class="btn btn-success" value="Save">
																								</div>
																								<div class="btn-group" role="group">
																									<button type="button" class="btn btn-info" data-dismiss="modal"  role="button">Close</button>
																								</div>
																							</div>
																						</div>
																					</form>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div style="padding: 1px 0px 0px 0px;" class="panel-body">
																<div class="table-responsive">   
																	<table class="table">
																		<thead style="font-weight: 600; background-color: whitesmoke;">
																			<tr>
																				<th> No. </th>
																				<th>FirstName</th>
																				<th>LastName</th>
																				<th>Mobile</th>
																				<th>Email</th>
																				<th>Comapny</th>
																				<th>Occupation</th>
																				<th>Actions</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr ng-repeat = "item in getreferences" style="cursor: pointer; cursor: hand;">
																				<td data-toggle="modal" data-target="#editRef1" ng-click="getreferencedetail(item.referenceId)">{{$index + 1}}</td>
																				<td data-toggle="modal" data-target="#editRef1" ng-click="getreferencedetail(item.referenceId)">{{item.referenceFirstName}}</td>
																				<td data-toggle="modal" data-target="#editRef1" ng-click="getreferencedetail(item.referenceId)">{{item.referenceLastName}}</td>
																				<td data-toggle="modal" data-target="#editRef1" ng-click="getreferencedetail(item.referenceId)">{{item.referenceMobileNumber}}</td>
																				<td data-toggle="modal" data-target="#editRef1" ng-click="getreferencedetail(item.referenceId)">{{item.referenceEmail}}</td>
																				<td data-toggle="modal" data-target="#editRef1" ng-click="getreferencedetail(item.referenceId)">{{item.referenceCompanyName}}</td>
																				<td data-toggle="modal" data-target="#editRef1" ng-click="getreferencedetail(item.referenceId)">{{item.referenceOccupation}}</td>
																				<td>
																					<ul class="pagination" style="display: flex; margin: 0px 0;">																	
																						<li data-placement="top" data-toggle="tooltip" title="Delete"><a ng-click="deletereference(item.referenceId)" href="#" style="background-color: #c9302c; color: #fff;" data-title="Delete"><i class="glyphicon glyphicon-trash"></i></a></li>
																					</ul>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="modal fade" id="editRef1" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
																	<div class="modal-dialog">
																		<div class="modal-content">
																			<form ng-submit="editreference(referenceid)">
																				<div class="modal-header">
																					<button type="button"  class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
																					<h4 class="modal-title custom_align" id="Heading"> Edit Detail{{item.refrence_name}}</h4>
																				</div>
																				<div class="modal-body">
																					<div class="panel-group" id="accordion1">
																						<div class="panel panel-default">
																							<div class="panel-heading">
																								<h4 class="panel-title">
																									<a data-toggle="collapse" data-parent="#accordion1" href="#collapse3">Existing Member?</a>
																								</h4>
																							</div>
																							<div id="collapse3" class="panel-collapse collapse">
																								<div class="panel-body">
																									<div class="row">
																										<div class="col-md-3">
																										</div>
																										<div class="col-md-6 text-center">
																											<div class="form-group">
																												<select id="memberidedit" name="memberidedit" ng-model="memberidedit" ng-options="item.membersId as item.memberFirstName+' '+item.memberMiddleName+' '+item.memberLastName for item in getmember | orderBy : 'memberFirstName'" class="form-control">
																													<option value="">---Select Member---</option>
																													
																												</select>
																											</div>
																										</div>
																										<div class="col-md-3">
																										</div>
																									</div>
																								</div>
																							</div>
																						</div>
																						<div class="panel panel-default">
																							<div class="panel-heading">
																								<h4 class="panel-title">
																									<a data-toggle="collapse" data-parent="#accordion1" href="#collapse4">Not A Existing Member?</a>
																								</h4>
																							</div>
																							<div id="collapse4" class="panel-collapse collapse">
																								<div class="panel-body">
																									<div class="row">
																										<div class="col-md-6">
																											<div class="input-group">
																												<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
																												<input type="text" id="firstnameedit" name="firstnameedit" ng-model="firstnameedit" class="form-control input-lg1" placeholder="First Name*" capitalize-first>
																											</div>
																										</div>
																										<div class="col-md-6">
																											<div class="input-group">
																												<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
																												<input type="text" id="lastnameedit" name="lastnameedit" ng-model="lastnameedit" class="form-control input-lg1" placeholder="Last Name*" capitalize-first>
																											</div>
																										</div>
																									</div>
																									<div class="space15"></div>
																									<div class="row">
																										<div class="col-md-6">
																											<div class="input-group">
																												<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
																												<input type="text" id="emailedit" name="emailedit" ng-model="emailedit" class="form-control input-lg1" placeholder="Email*">
																											</div>
																										</div>
																										<div class="col-md-6">
																											<div class="input-group">
																												<span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
																												<input type="text" id="mobilenumberedit" name="mobilenumberedit" ng-model="mobilenumberedit" class="form-control input-lg1" placeholder="Mobile*" disallow-spaces>
																											</div>
																										</div>
																									</div>
																									<div class="space15"></div>
																									<div class="row">
																										<div class="col-md-6">
																											<div class="form-group">
																												<input type="text" id="address1edit" name="address1edit" ng-model="address1edit" class="form-control input-lg1" placeholder="Address-1" capitalize-first>
																											</div>
																										</div>
																										<div class="col-md-6">
																											<div class="form-group">
																												<input type="text" id="address2edit" name="address2edit" ng-model="address2edit" class="form-control input-lg1" placeholder="Address-2" capitalize-first>
																											</div>
																										</div>
																									</div>
																									<div class="space15"></div>
																									<div class="row">
																										<div class="col-md-6">
																											<div class="form-group">
																												<select id="countrynameedit" name="countrynameedit" ng-model="countrynameedit" ng-options="item.countryId as item.countryName for item in getcountry" ng-change="onCountryChange()" class="form-control input-lg2">
																													<option value="">---Select Country---</option>
																												</select>
																											</div>
																										</div>
																										<div class="col-md-6">
																											<div class="form-group">
																												<select id="statenameedit" name="statenameedit" ng-model="statenameedit" ng-options="item.stateId as item.stateName for item in getrelatedstate" class="form-control input-lg2">
																													<option value="">---Select State---</option>
																												</select>
																											</div>
																										</div>
																									</div>
																									<div class="space15"></div>
																									<div class="row">
																										<div class="col-md-6">
																											<div class="form-group">
																												<input type="text" id="citynameedit" name="citynameedit" ng-model="citynameedit" class="form-control input-lg1" placeholder="City Name" capitalize-first>
																											</div>
																										</div>
																										<div class="col-md-6">
																											<div class="form-group">
																												<input type="text" id="pincodeedit" name="pincodeedit" ng-model="pincodeedit" class="form-control input-lg1" placeholder="Pincode" disallow-spaces>
																											</div>
																										</div>
																									</div>
																									<div class="space15"></div>
																									<div class="row">
																										<div class="col-md-6">
																											<div class="form-group">
																												<input type="text" id="companynameedit" name="companynameedit" ng-model="companynameedit" class="form-control input-lg1" placeholder="Comapany Name" capitalize-first>
																											</div>
																										</div>
																										<div class="col-md-6">
																											<div class="form-group">
																												<input type="text" id="occupationedit" name="occupationedit" ng-model="occupationedit" class="form-control input-lg1" placeholder="Occupation" capitalize-first>
																											</div>
																										</div>
																									</div>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div class="modal-footer">
																					<div class="btn-group btn-group-justified" role="group" aria-label="group button">
																						<div class="btn-group" role="group">
																							<input type="submit" class="btn btn-success" value="Update">
																						</div>
																						<div class="btn-group" role="group">
																							<button type="button" class="btn btn-primary" data-dismiss="modal" role="button">Close</button>
																						</div>
																					</div>
																				</div>
																			</form>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-2">																
																<a href="" ng-click="redirectfamilydetail(memberid, 2)" style="float: right; padding: 10px 20px; background-color: #fff; border: 1px solid #ddd; border-radius: 15px; cursor: pointer; cursor: hand;">Previous</a>							
															</div>
															<div class="col-md-10">
																<div style="padding: 1px 10px 0px 0px;  margin-top: -20px;">
																	<nav aria-label="...">
																		<ul class="pager">
																			<li class="next"><a class="success" href="#" ng-click="redirectpayments(2)" data-toggle="tab"> Next</a></li>
																		</ul>
																	</nav>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<%@include file="footer.jsp" %>											
	</body>
</html>