<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>Todo's Page!!</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body>
<%@ include file="commons/navbar.jspf"%>

Hi ${name }
<br>
<br>
<div class="container">
<table class="table table-striped">
<caption>Your Todo's are</caption>
<thead>
<tr>
<th>Description</th>
<th>Target Date</th>
<th>Is completed?</th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<c:forEach items="${todos}" var="todo">

<tr>
<td>${todo.desc}</td>
<td><fmt:formatDate pattern="dd/MM/yyyy" value="${todo.targetDate}" /></td>
<td>${todo.done}</td>
<td><a class="btn btn-danger" href="/delete-todo?id=${todo.id}">Delete</a></td>
<td><a class="btn btn-success" href="/update-todo?id=${todo.id}">Update</a></td>

</tr>
</c:forEach>
</tbody>
</table>

</div>
 <br>
 <div class="btn btn-success">
 <a class="button" href="/add-todo">Add Todo</a>
 </div >
 <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</body>
</html>