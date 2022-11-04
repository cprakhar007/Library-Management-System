const isNameValid = () => {
	const name = document.getElementById("name");
	const nameErrDiv = document.getElementById("name-err");
	if (name.value == "") {
		nameErrDiv.classList.remove("no-error");
		nameErrDiv.classList.add("error-msg");
		return false;
	} else {
		nameErrDiv.classList.remove("error-msg");
		nameErrDiv.classList.add("no-error");
		return true;
	}

}

const isEmailValid = () => {
	let email = document.getElementById("email");
	let emailRegex = /^([a-zA-Z0-9._-]+)@([a-zA-Z0-9]+\.)+[a-zA-Z]{2,4}$/i;
	const emailErrDiv = document.getElementById("email-err");
	if (!emailRegex.test(email.value)) {
		emailErrDiv.classList.remove("no-error");
		emailErrDiv.classList.add("error-msg");
		return false;
	} else {
		emailErrDiv.classList.remove("error-msg");
		emailErrDiv.classList.add("no-error");
		return true;
	}
}

const isPasswordValid = () => {
	const password = document.getElementById("password");
	const pwdErrDiv = document.getElementById("pwd-err");
	if (password.value == "") {
		pwdErrDiv.classList.remove("no-error");
		pwdErrDiv.classList.add("error-msg");
		return false;
	} else {
		pwdErrDiv.classList.remove("error-msg");
		pwdErrDiv.classList.add("no-error");
		return true;
	}

}

function validateLibrarian() {
	const name = isNameValid();
	const email = isEmailValid();
	const password = isPasswordValid();
	return name && email && password;
}
