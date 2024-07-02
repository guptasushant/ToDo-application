<%@ page import="java.util.List"%>
<%@ page import="com.todo.api.entity.Task"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task List</title>
<link rel="stylesheet"
	href="<c:url value='/resources/css/styles.css' />">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.container {
	margin-top: 50px;
}

.task-button {
	background-color: #ffcc00;
	border: none;
	color: white;
}

.task-button:hover {
	background-color: #ff9900;
}
</style>
</head>
<body>
	<div class="container">
		<h1 class="text-center mb-4">Report Page</h1>
		<div class="table-responsive">
			<table class="table table-bordered table-striped">
				<thead class="thead-dark">
					<tr>
						<th>Id</th>
						<th>Date</th>
						<th>Description</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<%
					List<Task> taskList = (List<Task>) request.getAttribute("tasks");
					if (taskList != null)
					{
						for (Task task : taskList) 
						{
					%>
					<tr>
						<td><%=task.getId()%></td>
						<td><%=task.getTaskDate()%></td>
						<td><%=task.getTaskdescription()%></td>
						<td colspan="3" class="text-center">
						<a	href="/taskfinish?id=<%=task.getId()%>"
							class="btn btn-primary task-button"
							style="text-decoration: none;"> Finish 
						</a>
						</td>
					</tr>
					<%
						}
					}
					%>
					             <tr>
                        <td colspan="3" class="text-center">
                            <a href="/success" class="btn btn-primary task-button" style="text-decoration: none;">
                                Home page
                            </a>
                        </td>
                    </tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
