<%@include file="jsp/top-section.jsp"%>
<title> TechBlog </title>
</head>
<body>
<%@include file="jsp/navbar.jsp" %>
<div class="container-fluid m-0 p-0 banner-background">
	<div class="jumbotron background-primary text-white p-3">

		<div class="container pb-4">
			<h3 class="display-4">Welcome to TechBlog</h3>
			<p class="lead">A programming language is a formal language
				comprising a set of strings that produce various kinds of machine
				code output. Programming languages are one kind of computer
				language, and are used in computer programming to implement
				algorithms.</p>

			<a class="btn btn-primary btn-lg" href="register.jsp" role="button">
				<span class="fa fa-external-link"> </span> Starts ! Its Free
			</a> 
			
			<a class="btn btn-primary btn-lg" href="login.jsp" role="button">
				<span class="fa fa-user-circle-o fa-spin"> </span> Login
			</a>
		</div>
	</div>
</div>

<div class="content">
	<div class="container">
		<div class="row mb-2">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Python</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn background-primary text-white">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Block Chaining</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn background-primary text-white">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn background-primary text-white">Read
							more</a>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Html</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn background-primary text-white">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">CSS</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn background-primary text-white">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">JavaScript</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn background-primary text-white">Read
							more</a>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>


<%@include file="jsp/bottom-section.jsp"%>

</body>
</html>