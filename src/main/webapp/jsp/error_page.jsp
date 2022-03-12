<%@include file="../jsp/top-section.jsp"%>
<title>Sorry, Something went wrong!</title>
<%@ page isErrorPage="true"%>
<link rel="stylesheet" href="../css/app.css">
</head>
<body>
	<main class="background-primary banner-background pt-5"
		style="height: 90vh">
		<div class="container text-center">
			<img src="../image/error.png" class="img-fluid" style="height: 50%" />
			<h3 class="display-4 mt-3">Sorry ! Something went wrong.</h3>
			<p><%= exception %></p>
			<a href="../techblog.jsp"
				class="btn background-primary btn-lg text-white mt-3">Home</a>
		</div>
	</main>
</body>
</html>