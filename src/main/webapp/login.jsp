<%@page import="com.techblog.util.Message"%>
<%@include file="jsp/top-section.jsp"%>
<title>TechBlog | Login </title>
</head>
<body>
<%@include file="jsp/navbar.jsp" %>

<main class="background-primary banner-background pt-5" style="height:80vh">
<div class="container mb-3">
	<div class="row">
	  <div class="col-md-4 offset-md-4">
	  <div class="card">
	    <div class="card-header background-primary text-white text-center"> 
	    <span class="fa fa-user-plus fa-3x"></span>
	    <p class="card-title">Login here</p>
	    </div>
	    
	    
	    <%
	    Message message  = (Message)session.getAttribute("message");	    
	    if(message != null){	    
	    %>	    
	    <div class="alert <%= message.getCssClass() %>" role="alert">
		  <%= message.getContent() %>
		</div>
	    <%
	      session.removeAttribute("message");	    
	    } %>	    
		<div class="card-body">
            <p id="message"></p>
			<form id="loginform" action="login" method="post">
			  <div class="form-group">
			    <label for="exampleInputEmail1">Email address</label>
			    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">Password</label>
			    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
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

<script type="text/javascript" src="js/app.js"></script>


</body>
</html>