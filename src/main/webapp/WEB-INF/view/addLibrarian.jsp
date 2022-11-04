<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Add User Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<link href="<c:url value="/resources/css/loginPageStyle.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/error.css"/>" rel="stylesheet" />
</head>
<body>
	<section class="wrapper mt-4">
		<div class="container">
			<div
				class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4 text-center">
				<form action="postLibrarian" class="rounded bg-white shadow p-5"
					method="post" novalidate onsubmit="return validateLibrarian();">
					<h3 class="text-dark fw-bolder fs-4 mb-3 ">Sign Up to Library</h3>
					<c:set var="doesExists" scope="page" value="${doesExists}" />
					<c:if test="${doesExists != null && doesExists == false }">
						<div class="text-danger">Email already exists</div>
					</c:if>
					<div class="form-floating mb-2">
						<input type="text" class="form-control" id="name"
							placeholder="Name" name="name" /> <label
							for="name">Name</label>
						<div class="row col-sm-8 no-error" id="name-err">
							<span>Please enter name</span>
						</div>
					</div>
					<div class="form-floating mb-2">
						<input type="email" class="form-control" id="email"
							placeholder="name@example.com" name="email" /> <label
							for="email">Email</label>
						<div class="row col-sm-8 no-error" id="email-err">
							<span>Please enter email</span>
						</div>
					</div>
					<div class="form-floating">
						<input type="password" class="form-control" id="password"
							placeholder="Password" name="password" /> <label for="password">Password</label>
						<div class="row col-sm-8 no-error" id="pwd-err">
							<span>Please enter password</span>
						</div>
					</div>
					<button type="submit" class="btn btn-primary submit_btn w-100 my-4">Continue</button>
				</form>
			</div>
		</div>
	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/resources/js/addLibrarianValidation.js"/>"></script>
</body>
</html>