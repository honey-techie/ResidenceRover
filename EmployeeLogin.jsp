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
				response.sendRedirect("BuyerHome.jsp"); } else if(employeeId!=null) {
				response.sendRedirect("EmployeeHome.jsp"); } %>

				<html>

				<head>
					<title>EMPLOYEE LOGIN</title>

					<link rel="stylesheet" href="b.css?<%=System.currentTimeMillis()%>">
					<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
					<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
					<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
				</head>

				<body>





					<nav class="navbar navbar-inverse navbar-fixed-top">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="index.jsp">Real-Estate</a>
							</div>
							<ul class="nav navbar-nav">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="BuyerLR.jsp">Buyer</a></li>
								<li><a href="AgentLogin.jsp">Agent</a></li>
								<li><a href="SellerLR.jsp">Seller</a></li>
								<li class="active"><a href="EmployeeLogin.jsp">Employee</a></li>
								<% // must provide logout option. %>

							</ul>
						</div>
					</nav>
					<br><br>
					<br><br>

					<div class="container">

						<div class="d-flex justify-content-center align-items-center ">
							<div class="row">
								<div class="col-sm-4">
									<h3><b>EMPLOYEE LOGIN</b></h3>
									<hr>
								</div>
							</div>
							<div class="row">

								<div class="col-sm-4">
									<% // must again set attributes of Agent and then re direct to agent homepage %>
										<form action="ValidateEmployeeLogin.jsp" method="post">
											EmployeeId : <input autocomplete="off" class="form-control" type="text"
												name="employeeId" required="">
											<br><br>

											Password : <input autocomplete="off" class="form-control" type="password"
												name="buyerPassword" required="">
											<br><br>

											<button class="btn btn-primary">submit</button>
										</form>
								</div>

							</div>

						</div>

					</div>








				</body>

				</html>