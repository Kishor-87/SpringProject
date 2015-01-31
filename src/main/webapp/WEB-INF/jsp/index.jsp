<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
</head>
<body>

	<!-- First load all the static resources here -->
	<c:set var="baseURL" value="${pageContext.request.contextPath}"></c:set>
	<script src="${baseURL}/resources/bootstrap/js/jquery-1.6.4.min.js" type="text/javascript"></script>
	<script src="${baseURL}/resources/bootstrap/js/jquery-ui-1.8.16.custom.min.js" type="text/javascript"></script>
	<script src="${baseURL}/resources/bootstrap/js/bootstrap.js" type="text/javascript"></script>
	<script src="${baseURL}/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	
	<!-- Bootstrap css -->
	<link href="${baseURL}/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<%-- <link href="${baseURL}/resources/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />       
    <link href="${baseURL}/resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <link href="${baseURL}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> --%> 
		

	
        
	<a href="${pageContext.request.contextPath}/student">Click here to get form</a>
</body>
</html>
