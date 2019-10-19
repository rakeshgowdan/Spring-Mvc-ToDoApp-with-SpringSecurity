<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Add  Page!!</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body>
<h3>Add a Todo</h3>
<div class="container">

<form:form action="/add-todo" method="post" commandName="todo">
 <form:hidden path="id"/>  
 
			<fieldset class="form-group">
			
				<form:label path="desc">Description</form:label>
				
				<form:input path="desc" type="text" class="form-control" required="required"/>
			<form:errors path="desc" cssClass="text-warning"></form:errors>
			</fieldset>
			<fieldset class="form-group">
			
				<form:label path="targetDate">Target Date</form:label>
				
				<form:input path="targetDate" type="text" class="form-control" required="required"/>
			<form:errors path="targetDate" cssClass="text-warning"></form:errors>
			</fieldset>
				
	<input class="btn btn-success"type="submit" value="Submit">
	</form:form>
</div>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</body>
</html>