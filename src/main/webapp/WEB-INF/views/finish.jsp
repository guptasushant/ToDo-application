<%@ page import="com.todo.api.entity.Task" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Details</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/styles.css' />">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .container {
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mb-4">Task Details</h1>
        <%
            Task task = (Task) request.getAttribute("task");
            if (task != null) {
        %>
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>Field</th>
                    <th>Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Id</th>
                    <td><%= task.getId() %></td>
                </tr>
                <tr>
                    <th>Date</th>
                    <td><%= task.getTaskDate() %></td>
                </tr>
                <tr>
                    <th>Description</th>
                    <td><%= task.getTaskdescription() %></td>
                </tr>
            </tbody>
        </table>
        <%
            } else {
        %>
        <p class="text-center">No task found with the given ID.</p>
        <%
            }
        %>
        <div class="text-center">
            <a href="/fetch" class="btn btn-primary">Back to Task List</a>
        </div>
    </div>
</body>
</html>