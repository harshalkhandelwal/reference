<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 	 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html>

<!-- Mirrored from p.w3layouts.com/demos/17-02-2016/resale/web/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Sep 2017 09:02:40 GMT -->
<head>
<title>CapStore : Register as Merchant</title>
<link rel="stylesheet" href="/paresan/css/bootstrap.min.css">
<link rel="stylesheet" href="/paresan/css/bootstrap-select.css">
<link href="/paresan/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
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
<script type="text/javascript" src="/paresan/js/jquery.leanModal.min.js"></script>
<link href="/paresan/css/jquery.uls.css" rel="stylesheet"/>
<link href="/paresan/css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="/paresan/css/jquery.uls.lcd.css" rel="stylesheet"/>
<!-- Source -->
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
			<div class="logo"><a href="index.html"><span>CapStore</span></a></div>
			<div class="header-right">
			<a class="account" href="/">HOME</a>
	<!-- Large modal -->
			<div class="selectregion">
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
					aria-hidden="true">
			<div class="modal-dialog modal-lg"> </div>
			  </div>
<script>
				$('#myModal').modal('');
				</script>
				
						<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
			</div>
		</div>
		</div>
	</div>
	 <section>
			<div id="page-wrapper" class="sign-in-wrapper">
			<!---728x90--->
				<div class="graphs">
					<div class="sign-up">
						<h1>Create an account as merchant</h1>
						<p class="creating">Welcome New Buddy :) Enter your credentials and start selling and buying stuff.</p>
						<h2>Personal Information</h2>
						<form:form action="/saveMerchant" method="post" modelAttribute="merchant">
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Merchant Name* :</h4>
							</div>
							<div class="sign-up2">
							
									<form:input path="merchantName" type="text" maxlength="30" placeholder="Enter merchant name" required="required"/>
								
							</div>
							<div class="clearfix"> </div>
						</div>
				

						<div class="sign-u">
							<div class="sign-up1">
								<h4>Email-Id* :</h4>
							</div>
							<div class="sign-up2">
								
									<form:input path="merchantEmail" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Enter email-id" required="required"/>
								
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Mobile No.* :</h4>
							</div>
							<div class="sign-up2">
								
									<form:input path="merchantMobileNumber" type="text" title="mobile number should be of 10 digits" pattern="^\d{10}$" placeholder="Enter mobile number" required="required"/>
								
							</div>
							<div class="clearfix"> </div>
						</div>
						
							<div class="sign-u">
							<div class="sign-up1">
								<h4>Address* :</h4>
							</div>
							<div class="sign-up2">
								
									<form:input path="merchantAddress" type="text" placeholder="Enter address" required="required"/>
								
							</div>
							<div class="clearfix"> </div>
						</div>
						
							<div class="sign-u">
							<div class="sign-up1">
								<h4>Store Name* :</h4>
							</div>
							<div class="sign-up2">
							
									<form:input path="merchantStoreName" type="text" placeholder="Enter store name" required="required"/>
							
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Password* :</h4>
							</div>
							<div class="sign-up2">
								
									<input name="password" id="txtPassword" type="password" title="the password must contain atleast one uppercase, one lowercase and digits and must be atleast 8 characters" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Enter password" required="required"/>
							
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Confirm Password* :</h4>
							</div>
							<div class="sign-up2">
							
									<input name="confpassword" id="txtConfirmPassword" type="password" title="the password must contain atleast one uppercase, one lowercase and digits and must be atleast 8 characters" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder=" " required=" "/>
								
							</div>
							<div class="clearfix"> </div>
						</div>
						
							<div class="sub_home_center">
							
									<input type="submit" value="Create" onclick="return Validate()">
								
							</div>
							</form:form>
							<br>
							<div class="sub_home_center">
								<form action="login">
									<input type="submit" value="Cancel">
								</form>
							</div>
							

							<div class="sub_home_right">
								<p>Go Back to <a href="index.html">Home</a></p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<!---728x90--->
			</div>
		<!--footer section start-->
			<footer class="diff">
			   <div class="footer-bottom text-center">
			<div class="container">
				<div class="footer-logo"><a href="index.html"><span>CapStore</span></a></div>
				<div class="footer-social-icons">
					<ul>
						<li><a class="facebook" href="#"><span>Facebook</span></a></li>
						<li><a class="twitter" href="#"><span>Twitter</span></a></li>
						<li></li>
						<li><a class="googleplus" href="#"><span>Google+</span></a></li>
					</ul>
				</div>
				<div class="copyrights">
				  <p> Copyright © 2019 | All rights reserved.</p>
				</div>			</div>
		</div>
			</footer>
        <!--footer section end-->
	</section>
</body>

<!-- Mirrored from p.w3layouts.com/demos/17-02-2016/resale/web/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Sep 2017 09:02:40 GMT -->
</html>