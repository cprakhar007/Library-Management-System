<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Otp Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<link href="<c:url value="/resources/css/otpPageStyle.css"/>" rel="stylesheet"/>
<link href="<c:url value="/resources/css/error.css"/>" rel="stylesheet"/>
</head>
<body>
	<section class="wrapper">
		<div class="container">
			<div
				class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-6 offset-xl-3 text-center">
				<div class="logo">
					<img src="<c:url value="/resources/images/logo.png"/>" class="img-fluid" alt="logo" />
				</div>
				<form action="newPasswordPage" class="rounded bg-white shadow p-5"
					novalidate onsubmit="return isOTPValid();">
					<h3 class="text-dark fw-bolder fs-4 mb-2">Two Step
						Verification</h3>

					<div class="fw-normal text-muted mb-4">Enter the verification
						code we sent to</div>
					<div
						class="d-flex align-items-center justify-content-center fw-bold mb-4">
						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
							fill="currentColor" class="bi bi-asterisk" viewBox="0 0 16 16">
                            	<path
								d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                        	</svg>
						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
							fill="currentColor" class="bi bi-asterisk" viewBox="0 0 16 16">
                            	<path
								d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                        	</svg>

						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
							fill="currentColor" class="bi bi-asterisk" viewBox="0 0 16 16">
                            	<path
								d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                        	</svg>
						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
							fill="currentColor" class="bi bi-asterisk" viewBox="0 0 16 16">
                            	<path
								d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                        	</svg>
						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
							fill="currentColor" class="bi bi-asterisk" viewBox="0 0 16 16">
                            	<path
								d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                        	</svg>
						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
							fill="currentColor" class="bi bi-asterisk" viewBox="0 0 16 16">
                            	<path
								d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                        	</svg>
						<span>${username}</span>
					</div>
					<div class="row col-sm-8 no-error" id="otp-not-match-err">
						<span>OTP does not match</span>
					</div>
					<div class="otp_input text-start mb-2">
						<label for="digit">Type your 6 digit security code</label>
						<div
							class="d-flex align-items-center justify-content-between mt-2">
							<input type="number" class="form-control" placeholder="" id="d-1" maxLength="1" /> 
							<input type="number" class="form-control" placeholder="" id="d-2" maxLength="1" />
							<input type="number" class="form-control" placeholder="" id="d-3" maxLength="1" />
							<input type="number" class="form-control" placeholder="" id="d-4" maxLength="1" />
							<input type="number" class="form-control" placeholder="" id="d-5" maxLength="1" />
							<input type="number" class="form-control" placeholder="" id="d-6" maxLength="1" />
						</div>
						<div class="row col-sm-8 no-error" id="otp-err">Please enter
							OTP</div>
					</div>
					<input type="hidden" name="generatedOTP" id="generatedOTP"
						value="${generatedOtp }"/>
					<input type="hidden" name="username" value="${username}" id="hdd"/>
					<button type="submit" class="btn btn-primary submit_btn my-4">Submit</button>
					<div class="fw-normal text-muted mb-2">
						Didn’t get the code ? <a href="#"
							class="text-primary fw-bold text-decoration-none">Resend</a>
					</div>
				</form>
			</div>
		</div>
	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/resources/js/otpPageValidation.js"/>"></script>
</body>
</html>