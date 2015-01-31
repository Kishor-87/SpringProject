<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
	<h2>Submitted Student Information</h2>
	<table>
		<tr>
			
			<th>Id</th>
			<th>Name</th>
			<th>Age</th>
		</tr>
		<c:out value="${studentList}"/>
		<c:forEach var="studentRecord" items="${studentList}">
			<tr>
				<td><c:out value="${studentRecord.id}" /></td>
				<td><c:out value="${studentRecord.name}" /></td>
				<td><c:out value="${studentRecord.age}" /></td>
			</tr>
		</c:forEach>
		

	</table>
</body>
</html>