<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Forgot Password Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<link href="<c:url value="/resources/css/forgotPasswordPageStyle.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/error.css"/>" rel="stylesheet" />
</head>
<body>
    
	<section class="wrapper">
		<div class="container">
			<div
				class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4 text-center">
				<div class="logo">
					<img src="<c:url value="/resources/images/logo.png"/>" alt="logo" class="img-fluid" alt="logo" />
				</div>
				<form action="forgotPassword" class="rounded bg-white shadow p-5"
					onsubmit="return isUserNameValid();">
					<h3 class="text-dark fw-bolder fs-4 mb-2">Forgot Password?</h3>
					<div class="fw-normal text-muted mb-4">Enter your email to
						reset your password.</div>
					<c:set var="doesUserExists" scope="page" value="${requestScope.doesExists}" />
					<c:if test="${doesUserExists != null && doesUserExists == false }">
						<div class="text-danger">Username does not exists</div>
					</c:if>
					<div class="form-floating mb-3">
						<input type="email" id="username" class="form-control"
							placeholder="name@example.com" name="username" /> <label
							for="username">Email address</label>
						<div class="row col-sm-8 no-error" id="usr-err">
							<span>Please enter username</span>
						</div>
					</div>
					<button type="submit" class="btn btn-primary submit_btn my-4">Submit</button>
					<button type="submit"
						class="btn btn-secondary submit_btn my-4 ms-3">Cancel</button>
				</form>
			</div>
		</div>
	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/resources/js/validation.js"/>"></script>
</body>
</html>