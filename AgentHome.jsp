<%@ page errorPage="error.jsp" %>
	<%@ page session="true" %>
		<%@ include file="connection.jsp" %>
			<% // for revalidation after logout.
				response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
				response.setHeader("Pragma","no-cache"); response.setHeader("Expires","0"); String
				agentId=(String)session.getAttribute("agentId"); String
				sellerId=(String)session.getAttribute("sellerId"); String
				buyerId=(String)session.getAttribute("buyerId"); if(buyerId!=null) {
				response.sendRedirect("BuyerHome.jsp"); } else if(sellerId!=null) {
				response.sendRedirect("SellerHome.jsp"); } else if(agentId==null) {
				response.sendRedirect("AgentLogin.jsp"); } %>

				<html>

				<head>

					<link rel="stylesheet" href="b.css?<%=System.currentTimeMillis()%>">
					<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
								<li><a href="BuyerLR.jsp">Buyer</a></li>
								<li class="active"><a href="#">Agent</a></li>
								<li><a href="SellerLR.jsp">Seller</a></li>
								<!-- <li><a href="EmployeeLogin.jsp">Employee</a></li> -->
								<li><a href="Logout.jsp">Logout</a></li>
								<% // must provide logout option. %>

							</ul>
						</div>
					</nav>
					<br><br>
					<br><br>
					<section id="agent_home">
						<div class="container">

							<div class="d-flex justify-content-center align-items-center ">
								<div class="row">
									<div class="col-sm-4">
										<h3><b>AGENT HOME</b></h3>
										<hr>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<button type="button" onclick="location.href='UpdateHouseStatus.jsp'"
											class="btn   btn-block">UPDATE HOUSE STATUS</button>

										<br> <br>

										<button type="button" onclick="location.href='UpdateLeavingStatus.jsp'"
											class="btn   btn-block">UPDATE LEAVING DETAILS(RENT)
										</button>

										<br> <br>

										<button type="button" onclick="location.href='ViewAgentHouses.jsp'"
											class="btn  btn-block">VIEW HOUSES ASSOCIATED</button>

										<br> <br>

										<!-- <button type="button" onclick="location.href='Query1.jsp'" class="btn btn-primary btn-lg btn-block">Query 1</button>

						<br> <br>

						<button type="button" onclick="location.href='Query2.jsp'" class="btn btn-primary btn-lg btn-block">Query 2</button>

						<br> <br>

						<button type="button" onclick="location.href='Query3.jsp'" class="btn btn-primary btn-lg btn-block">Query 3</button>

						<br> <br>

						 -->






									</div>

								</div>

							</div>

						</div>





					</section>


				</body>

				</html>