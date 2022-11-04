<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Welcome Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <link href="css/welcomePageStyle.css" rel="stylesheet"/>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" style="z-index:300; height:60px">
        <div class="container-fluid">
            <a href="#" class="navbar-brand">SpringLibrary</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span
                    class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="navbar-item">
                        <a href="#" class="nav-link" aria-current="page">Home</a>
                    </li>
                    <li class="navbar-item">
                        <a href="#" class="nav-link" aria-current="page">Contact</a>
                    </li>
                </ul>
                <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                Hi ${cookie.librarian.value }
                </li>
                 <li class="nav-item">
                        <a href="librarian/logoutl" class="nav-link"><button>Logout</button></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="<c:url value="/resources/js/validation.js"/>"></script>
</body>

</html>