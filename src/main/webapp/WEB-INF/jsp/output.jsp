
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<c:set var="baseURL" value="${pageContext.request.contextPath}"></c:set>
<head>
<script src="${baseURL}/resources/bootstrap/js/jquery-1.6.4.min.js"
	type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<link href="${baseURL}/resources/bootstrap/css/bootstrap.css"
		rel="stylesheet" type="text/css" />
	<h2>Submitted Student Information</h2>

	<table class="table">
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
				<td><a href="javascript:void(0)" id="${studentRecord.id}">Edit</a></td>
			</tr>
			<script type="text/javascript">
				$(function() {
					
					$("#${studentRecord.id}").click(function() {
						
					});
				});
			</script>
		</c:forEach>


	</table>
</body>

</html>