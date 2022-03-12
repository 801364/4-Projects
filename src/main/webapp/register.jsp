<%@page import="com.techblog.util.Message"%>
<%@include file="jsp/top-section.jsp"%>
<title>TechBlog | Register</title>
</head>
<body>
	<%@include file="jsp/navbar.jsp"%>

	<main class="background-primary banner-background p-5">

		<div class="container mb-3">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-header text-center background-primary text-white">
						<span class="fa fa-user-circle fa-3x"></span>
						<p>Register here</p>
						</div>

                        <%
                         Message  message = (Message)session.getAttribute("message");
                         if(message != null){
                         %>

						<div class="alert <%= message.getCssClass() %>" role="alert">
							<%= message.getContent() %>
						</div>

                        <% }  session.removeAttribute("message");%>
						<div class="card-body">
						
						<form id="register" action="register" method="post">
						
						   <div class="form-group">
						    <label for="username">Username</label>
						    <input type="text" required name="username" class="form-control" id="username" placeholder="Enter Username">
						  </div>
						
						  <div class="form-group">
						    <label for="email">Email address</label>
						    <input type="email" required name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
						  </div>
						  
						  <div class="form-group">
						    <label for="password">Password</label>
						    <input type="password" required name="password" class="form-control" id="password" placeholder="Password">
						  </div>
						  
						  <div class="form-group">
						    <label for="gender">Select Gender</label> 
						    <br/>
						       <div class="form-check form-check-inline">
								  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="male">
								  <label class="form-check-label" for="inlineRadio1">Male</label>
								</div>
								<div class="form-check form-check-inline">
								  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="female">
								  <label class="form-check-label" for="inlineRadio2">Female</label>
							   </div>
						  </div>					  
						  
						 <div class="form-group">
							  <textarea class="form-control" name="about" id="aboutys" rows="3" placeholder="Please write something about yourself"></textarea>
						 </div>
						  
						  <div class="form-check">
						    <input type="checkbox" name="tc" class="form-check-input" id="tc">
						    <label class="form-check-label" for="tc">agree terms and condition</label>
						  </div>			  
						  
						  
						  <button type="submit" class="btn btn-primary">Submit</button>
						</form>
					  </div>						
					</div>
				</div>
			</div>

		</div>

	</main>

	<%@include file="jsp/bottom-section.jsp"%>
	
	<script type="text/javascript">
	    <%@include file="js/app.js"%>
	</script>
	

</body>
</html>