<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Student Information</h2>
	<%-- <form:form method="POST" action="/StudentApp/addStudent">
		<table>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="age">Age</form:label></td>
				<td><form:input path="age" /></td>
			</tr>
			<tr>
				<td><form:label path="id">Id</form:label></td>
				<td><form:input path="id" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form> --%>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<fieldset>
				<legend>Bootstrap Form With Spring Mvc Example</legend>
				<form class="form-horizontal" method="post" action='/StudentApp/addStudent' name="employeeForm" id="employeeForm">
					<div class="control-group">
						<label class="control-label">Name</label>
						<div class="controls">
							<input type="text" name="firstName" id="firstName" title="First Name" value="">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Age</label>
						<div class="controls">
							<input type="text" name="age" id="age" title="Age" value="">
						</div>
					</div>
					<!-- <div class="control-group">
						<label class="control-label">Email</label>
						<div class="controls">
							<input type="text" name="email" id="email" title="Email" value="">
						</div>
					</div> -->
					<div class="form-actions">
						<button type="submit" class="btn btn-success">Submit</button>
						<button type="button" class="btn">Cancel</button>
					</div>
				</form>
				</fieldset>
			</div>
		</div>
	</div>			

</body>
</html>