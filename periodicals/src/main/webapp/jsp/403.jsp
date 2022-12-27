<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Not Permitted</title>
</head>
<body>
	<div>
		<div>
			<h3>You have no permission to access page!</h3>
		</div>
		
		<form action="/logout" method="post">
			<input type="submit" value="Sign in a different user!" />
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</form>
	</div>
</body>
</html>