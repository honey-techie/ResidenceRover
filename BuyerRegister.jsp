<%@ page errorPage="error.jsp" %>
	<%@ page session="true" %>
		<%@ include file="connection.jsp" %>
			<% // for revalidation after logout.
				response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
				response.setHeader("Pragma","no-cache"); response.setHeader("Expires","0"); String
				agentId=(String)session.getAttribute("agentId"); String
				sellerId=(String)session.getAttribute("sellerId"); String
				buyerId=(String)session.getAttribute("buyerId"); String
				employeeId=(String)session.getAttribute("employeeId"); if(agentId!=null) {
				response.sendRedirect("AgentHome.jsp"); } else if(sellerId!=null) {
				response.sendRedirect("SellerHome.jsp"); } else if(buyerId!=null) {
				response.sendRedirect("BuyerHome.jsp"); } %>

				<html>

				<head>


					<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
					<link rel="stylesheet" href="b.css?<%=System.currentTimeMillis()%>">
					<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
					<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
					<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
					<!-- <a class="navbar-brand" href=""><i class="glyphicon glyphicon-home"></i>  Real-Estate</a> -->

				</head>

				<body>





					<nav class="navbar navbar-inverse navbar-fixed-top">
						<div class="container-fluid">
							<div class="navbar-header">
								<!-- <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script> -->
								<a class="navbar-brand" href="index.jsp"><i class="glyphicon glyphicon-home"></i>
									Real-Estate</a>

							</div>
							<ul class="nav navbar-nav">
								<li><a href="index.jsp">Home</a></li>
								<li class="active"><a href="BuyerLR.jsp">Buyer</a></li>
								<li><a href="AgentLogin.jsp">Agent</a></li>
								<li><a href="SellerLR.jsp">Seller</a></li>
								<!-- <li><a href="EmployeeLogin.jsp">Employee</a></li> -->
								<% // must provide logout option. %>

							</ul>
						</div>
					</nav>
					<br><br>
					<br><br>

					<section id="Buyer-Reg">

						<div class="container">
							<div class="d-flex justify-content-center align-items-center ">
								<div class="row">
									<div class="col-sm-4">
										<h3><b>BUYER REGISTER</b></h3>
										<hr>
									</div>
								</div>
								<div class="row">

									<div class="col-sm-4">

										<% if(session.getAttribute("userexists")!=null) { %>
											<h5 style="color:red;">
												<%=session.getAttribute("userexists")%>
											</h5>
											<% session.removeAttribute("userexists"); %>
												<% } else if(session.getAttribute("id")!=null) { %>
													<% String id=(String)session.getAttribute("id"); %>
														<% session.removeAttribute("id"); %>
															<h5 style="color:rgb(0, 0, 0);">Registration Successful,
																Your Id:
																<%=id%>
															</h5>
															<% } %>
																<form action="ValidateBuyerRegister.jsp" method="post">
																	<p
																		style="color: rgb(255, 255, 255);font-size:1.9em;">
																	</p>
																	<b>BuyerName :</b></p>
																	<input autocomplete="off" class="form-control"
																		type="text" name="buyerName"
																		placeholder="Enter Your Name.." required="">
																	<br><br>
																	<p style="color: white;font-size:1.9em;">
																		<b>BuyerContactNumber :</b>
																	</p>
																	<input autocomplete="off" class="form-control"
																		type="text" name="buyerContact"
																		pattern="[0-9]{10}"
																		placeholder="10 Digit Phone Number.."
																		required="">
																	<br><br>
																	<p style="color: white;font-size:1.9em;"><b>Password
																			:</b></p><input autocomplete="off"
																		class="form-control" type="password"
																		name="buyerPassword" pattern=".{8,}"
																		placeholder="Eight or More Characters Password.."
																		title="Eight or More Characters" required="">
																	<br><br>

																	<button class="btn btn-success"> <span
																			class="fa fa-user-plus"></span>
																		Register</button>
																</form>
									</div>

								</div>

							</div>
						</div>

					</section>



				</body>

				</html>