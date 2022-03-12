<%@page import="com.techblog.model.User" errorPage="jsp/error_page.jsp"%>

<%
User user = (User) session.getAttribute("user");
%>


<nav class="navbar navbar-expand-lg navbar-dark background-primary">
	<a class="navbar-brand" href="techblog.jsp"> <span
		class="fa fa-asterisk"></span> TechBlog
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><span class="fa fa-check-square-o"></span>
					Categories </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Java Programming Language</a> <a
						class="dropdown-item" href="#">Python</a> <a class="dropdown-item"
						href="#">Blockchain</a> <a class="dropdown-item" href="#">Cloud
						Computing</a>
				</div></li>

			<li class="nav-item"><a class="nav-link" href="#"> <span
					class="fa fa-address-card-o"> </span> Contact
			</a></li>
 
 
            <%
              if(user == null){
            
            %> 

			<li class="nav-item"><a class="nav-link" href="login.jsp"> <span
					class="fa fa-user-circle-o"> </span> Login
			</a></li>

			<li class="nav-item"><a class="nav-link" href="register.jsp">
					<span class="fa fa-external-link"> </span> Signup
			</a></li>
			
		   <% } %>	
		</ul>
		
		
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
		</form>
		
		<% if(user != null) { %>
			<ul class="navbar-nav mr-right">
				<li class="nav-item"><a class="nav-link" href="login.jsp"> <span
						class="fa fa-user-circle"> </span> <%=user.getName() %>
				</a></li>
	
				<li class="nav-item"><a class="nav-link" href="logout">
						<span class="fa fa-power-off"> </span> logout
				</a></li>
			
			</ul>
		<% } %>
	</div>
</nav>