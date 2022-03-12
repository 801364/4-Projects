<%@page import="com.techblog.model.User" errorPage="jsp/error_page.jsp"%>

<%
User loggedUser = (User) session.getAttribute("user");

if (loggedUser == null) {
	response.sendRedirect("login.jsp");
}
%>

<%@include file="jsp/top-section.jsp"%>
<title>TechBlog | Profile</title>
</head>
<body>
	<%@include file="jsp/navbar.jsp"%>


	<!-- Start of Profile Modal -->

	<div class="modal fade" id="profileEditModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header  background-primary text-white text-center">
					<h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<img src="image/<%=loggedUser.getProfile()%>" class="img-fluid"
							style="border-radius: 50%; max-width: 150px" />
						<h5 class="modal-title mt-3" id="exampleModalLabel"><%=loggedUser.getName()%></h5>

						<!-- Profile Details -->
						<div id="profile-detail">
							<table class="table">
								<tbody>
									<tr>
										<th scope="row">ID :</th>
										<td><%=loggedUser.getId()%></td>
									</tr>
									<tr>
										<th scope="row">Email :</th>
										<td><%=loggedUser.getEmail()%></td>

									</tr>
									<tr>
										<th scope="row">Gender :</th>
										<td><%=loggedUser.getGender()%></td>
									</tr>

									<tr>
										<th scope="row">About :</th>
										<td><%=loggedUser.getAbout()%></td>
									</tr>

									<tr>
										<th scope="row">Registered on :</th>
										<td><%=loggedUser.getRdate().toString()%></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- End of Profile details -->

						<div id="profile-edit" style="display: none;">

							<h5 class="mt-2">Please Edit Below</h5>

							<form action="edit" method="post" enctype="multipart/form-data">
								<table class="table">
									<tbody>
										<tr>
											<th scope="row">ID </th>
											<td><%=loggedUser.getId()%></td>
										</tr>
										<tr>
											<th scope="row">Email </th>
											<td><input type="text" name="email" class="form-control"
												value="<%=loggedUser.getEmail()%>" /></td>
										</tr>

										<tr>
											<th scope="row">Name </th>
											<td><input type="text" name="name" class="form-control"
												value="<%=loggedUser.getName()%>" /></td>
										</tr>


										<tr>
											<th scope="row">Password </th>
											<td><input type="password" name="password"
												class="form-control" placeholder="Please enter new password" /></td>
										</tr>

										<tr>
											<th scope="row">About </th>
											<td><textarea name="about" class="form-control"> <%=loggedUser.getAbout()%> </textarea>
											</td>
										</tr>

										<tr>
											<th scope="row">Picture </th>
											<td><input type="file" name="picture"
												class="form-control" /></td>
										</tr>
									</tbody>
								</table>
								
								<div class="container">
								  <button type="submit" class="btn btn-outline-primary" > Save </button>
								</div>

							</form>


						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" id="edit-profile-btn" class="btn btn-primary">Edit</button>
				</div>
			</div>
		</div>
	</div>

	<!-- End of Profile Modal -->

	<%@include file="jsp/bottom-section.jsp"%>
	<script type="text/javascript" src="js/app.js"></script>
</body>
</html>