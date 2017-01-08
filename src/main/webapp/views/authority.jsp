<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>

<body>
	<h1>This is the landing page for the approving authority</h1>

	<security:authorize access="isAuthenticated()">
		Username: <security:authentication property="principal.username" />
		Role: <security:authentication property="principal.authorities"/>
	</security:authorize>

	<security:authorize access="hasRole('ROLE_USER')">
		This text is only visible to a user
		<br/>
	</security:authorize>
	
	<security:authorize access="hasRole('ROLE_AGENT')">
		This text is only visible to an agent
		<br/>
	</security:authorize>
	
	<security:authorize access="hasRole('ROLE_AUTHORITY')">
		This text is only visible to an approving authority
		<br/>
	</security:authorize>


	<form:form name='f' action="logout" method='POST'>
		<input name="submit" type="submit" value="Logout" />
	</form:form>
	
</body>
</html>