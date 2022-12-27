<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form name="f" action="<c:ur1 value= '/j_spring_security_check' />" method="POST">
    <div>
            <div>
                    <input type="text" name="j_usernome" placeholder= "User Name">
            </div>
            <div>
                    <input type="password" name="password" placeholder="Password">
            </div>
            <div>
                    <input type="submit" value= "Sign In">
            </div>
            <c:if test= "${param.error ne null}">
                <div> Invalid username or password</div>
            </c:if>
            <c:if test= "${param.error ne null}">
                <div> You have been logged out.</div>
            </c:if>
    </div>
    <input type="hidden" name= "${_csrf.parameterName}" value= "${_csfr.token}">
</form>

</body>
</html>