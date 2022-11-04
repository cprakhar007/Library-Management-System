<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Setup New Password</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="<c:url value="/resources/css/newPasswordPageStyle.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/error.css"/>" rel="stylesheet" />
</head>
<body>

    <section class="wrapper">
		<div class="container">
			<div class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4 text-center">
				<div class="logo">
					<img src="<c:url value="/resources/images/logo.png"/>" alt="logo" class="img-fluid" alt="logo">
				</div>
				<form action="resetPassword" class="rounded bg-white shadow p-5"
					novalidate onsubmit="return validatePassword();" method="post">
					<h3 class="text-dark fw-bolder fs-4 mb-2">Setup New Password</h3>
					<div class="fw-normal text-muted mb-4">
						Already have reset your password? <a href="index.html"
							class="text-primary fw-bold text-decoration-none">Sign in</a>
					</div>
					<div class="row col-sm-8 no-error" id="pwd-no-match-err">
						<span>Password do not match</span>
					</div>
					<div class="form-floating mb-3">
						<input type="password" id="newPassword" class="form-control"
							placeholder="Password" name="newPassword" /> <label
							for="newPassword">Password</label> <span
							class="password-info mt-2">Use 8 or more characters with a
							mix of letters, number & symbols.</span>
						<div class="row col-sm-8 no-error" id="new-pwd-err">
							<span>Please enter new password</span>
						</div>
					</div>
					<div class="form-floating mb-3">
						<input type="password" id="confPassword" class="form-control"
							placeholder="Password" name="confPassword" /> <label
							for="confPassword">Confirm Password</label>
						<div class="row col-sm-8 no-error" id="conf-pwd-err">
							<span>Please enter confirmation password</span>
						</div>
					</div>
					<div class="form-check d-flex align-items-center">
						<input type="checkbox" id="gridCheck" class="form-check-input"
							checked> <label for="gridCheck"
							class="form-check-label ms-2">I Agree<a href="#">Terms
								and Conditions</a>.
						</label>
					</div>
					<input type="hidden" name="username" value="${username}"/>
					<button type="submit" class="btn btn-primary submit_btn my-4">Submit</button>
				</form>
			</div>
		</div>
	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/resources/js/newPasswordPageValidation.js"/>"></script>
</body>
</html>