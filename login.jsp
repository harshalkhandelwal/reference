<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<title>CapStore : LOGIN</title>
<link rel="stylesheet" href="/paresan/css/bootstrap.min.css">
<link rel="stylesheet" href="/paresan/css/bootstrap-select.css">
<link href="/paresan/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Ubuntu+Condensed'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- js -->
<script type="text/javascript" src="/paresan/js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/paresan/js/bootstrap.min.js"></script>
<script src="/paresan/js/bootstrap-select.js"></script>
<script>
  $(document).ready(function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link href="paresan/css/jquery.uls.css" rel="stylesheet" />
<link href="paresan/css/jquery.uls.grid.css" rel="stylesheet" />
<link href="paresan/css/jquery.uls.lcd.css" rel="stylesheet" />
<!-- Source -->
<script>
function checkEmpty()
{
	/* var email=/[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
	
	if(document.loginform.emailid.value == "")
	{
		alert("Please fill the Email");
	}
	else if (email.test(document.loginform.emailid.value) == false) 
	{
		alert("Please enter valid Email Id.");
	}
	else if (document.loginform.pwd.value == "") 
	{
		alert("Please enter valid password.");
	}
	 */
	}
</script>
<script src="/paresan/js/jquery.uls.data.js"></script>
<script src="/paresan/js/jquery.uls.data.utils.js"></script>
<script src="/paresan/js/jquery.uls.lcd.js"></script>
<script src="/paresan/js/jquery.uls.languagefilter.js"></script>
<script src="/paresan/js/jquery.uls.regionfilter.js"></script>
<script src="/paresan/js/jquery.uls.core.js"></script>
<script>
			$( document ).ready( function() {
				$( '.uls-trigger' ).uls( {
					onSelect : function( language ) {
						var languageName = $.uls.data.getAutonym( language );
						$( '.uls-trigger' ).text( languageName );
					},
					quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
				} );
			} );
		</script>
</head>
<style>
:valid {
    color: green;
} 
:invalid {
    color: red;
} 
</style>
<body>
	<div class="header">

		<div class="container">
			<div class="logo">
				<a href="index.html"><span>CapStore</span></a>
			</div>
			<div class="header-right">
				<a class="account" href="/">HOME</a>
				<!-- Large modal -->
				<div class="selectregion">
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myLargeModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg"></div>
					</div>
					<script>
				$('#myModal').modal('');
				</script>
				</div>
			</div>
		</div>
	</div>
	<section>
	<div id="page-wrapper" class="sign-in-wrapper">
		<!---728x90--->
		<div class="graphs">
			<div class="sign-in-form">
				<div class="sign-in-form-top">
					<h1>Log in</h1>
				</div>
				<div class="signin">
					<div class="signin-rit">
						<p>
							<a href="forget">Forget Password</a>
						</p>
						<div class="clearfix"></div>
					</div>

					<form:form action="/validateuser"
						modelAttribute="userlogin">

						<div class="log-input">
							<div class="log-input-left">
								<form:input path="emailId" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" width="300%" required="required" class="User form-control input-lg form-group form-group-lg " 
									placeholder="Enter Email" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Your Email';}" />

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="log-input">
							<div class="log-input-left">
								<form:input path="password" type="password" title="the password must contain atleast one uppercase, one lowercase and digits and must be atleast 8 characters" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required="required"
									class="lock" value="password" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Password';}" />
							</div>

							<div class="clearfix"></div>

						</div>
						<div class="log-input">
							<div class="log-input-left">
								<form:select name="role" path="role">
									<option value="customer">Customer</option>  
									<option value="admin">Admin</option>
									<option value="merchant">Merchant</option>
								
									</form:select>
							</div>

							<div class="clearfix"></div>
						</div>

						<input type="submit" value="Log in">

					</form:form>
				</div>
				<div class="new_people">
					<h2>For New People</h2>
					<p>If you are new to our CapStore Website then register for
						exciting deals and offers.</p>
					<a href="/role">Register Now!</a>
				</div>
			</div>
		</div>
		<!---728x90--->
	</div>
	<!--footer section start--> <footer class="diff">
	<div class="footer-top">
		<div class="container">
			<div class="foo-grids">
				<div class="col-md-3 footer-grid">
					<h4 class="footer-head">Who We Are</h4>
					<p>This website comes under our final project work.</p>
				</div>

				<div class="col-md-3 footer-grid">
					<h4 class="footer-head">Contact Us</h4>
					<span class="hq">Our headquarters</span>
					<address>
						<ul class="location">
							<li><span class="glyphicon glyphicon-map-marker"></span></li>
							<li>Capgemini Consulting Services PVT. LTD.</li>
							<div class="clearfix"></div>
						</ul>
						<ul class="location">
							<li><span class="glyphicon glyphicon-earphone"></span></li>
							<li>+919634684913</li>
							<div class="clearfix"></div>
						</ul>
						<ul class="location">
							<li><span class="glyphicon glyphicon-envelope"></span></li>
							<li><a href="mailto:harshal.khandelwal@capgemini.com"><strong>harshal.khandelwal@capgemini.com</strong></a></li>
							<li>&nbsp;</li>
							<div class="clearfix"></div>
						</ul>
					</address>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-bottom text-center">
			<div class="container">
				<div class="footer-logo">
					<a href="#"><span>CapStore</span></a>
				</div>
				<div class="footer-social-icons">
					<ul>
						<li><a class="facebook" href="#"><span>Facebook</span></a></li>
						<li><a class="twitter" href="#"><span>Twitter</span></a></li>
						<li></li>
						<li><a class="googleplus" href="#"><span>Google+</span></a></li>
					</ul>
				</div>
				<div class="copyrights">
					<p>Copyright © 2019 CapStore. All rights reserved</p>
				</div>
			</div>
		</div>
	</div>
	</footer> <!--footer section end--> </section>
</body>


</html>