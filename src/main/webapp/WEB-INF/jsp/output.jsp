<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Insert title here</title>
</head>
<body>
<body>
	
	<h2>Submitted Student Information</h2>
	<table>
		<tr>
			
			<th>Id</th>
			<th>Name</th>
			<th>Age</th>
		</tr>
		<c:forEach var="studentRecord" items="${sbean.studentBeans}">
			<tr>
				<td><c:out value="${studentRecord.id}" /></td>
				<td><c:out value="${studentRecord.name}" /></td>
				<td><c:out value="${studentRecord.age}" /></td>
			</tr>
		</c:forEach>
		

	</table>
</body>

</body>
</html>