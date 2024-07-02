<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Todo List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: "Poppins", sans-serif;
            background: #fafafa;
        }
        .container {
            margin-top: 20px;
        }
        .card {
            margin-bottom: 10px;
        }
        .btn-finish {
            background-color: #ffcc00;
            border: none;
            color: white;
        }
        .btn-finish:hover {
            background-color: #ff9900;
        }
        .fab {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background-color: #ffcc00;
            border: none;
            border-radius: 50%;
            color: white;
            width: 60px;
            height: 60px;
            font-size: 24px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }
        .fab:hover {
            background-color: #ff9900;
        }
        .hidden {
            display: none;
        }
        #taskFormContainer {
            display: none;
            position: fixed;
            bottom: 100px;
            right: 30px;
            width: 300px;
            background: white;
            border: 1px solid #ddd;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
            border-radius: 8px;
        }
        #taskFormContainer.active {
            display: block;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="text-center mb-4">
            <h1>TODOs Task Report</h1>
        </div>

        <div id="todoList" class="mb-4">
            <!-- Example task cards -->

            <!-- More task cards can be added here -->
        </div>

        <div id="finishedList">
            <!-- Finished tasks will be added here -->
        </div>

        <button class="fab" id="addTaskBtn">+</button>
    </div>

    <div id="taskFormContainer">
        <form action="/task" method="post">
            <div class="form-group">
                <label for="taskDate">Task Date</label>
                <input type="date" class="form-control" id="taskDate" name="taskDate" required>
            </div>
            <div class="form-group">
                <label for="taskdescription">Task Description</label>
                <textarea class="form-control" id="taskdescription" name="taskdescription" rows="3" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Save Task</button>
        </form>
    </div>

 <script>
        document.addEventListener('DOMContentLoaded', function() {
            const addTaskBtn = document.getElementById('addTaskBtn');
            const taskFormContainer = document.getElementById('taskFormContainer');

            addTaskBtn.addEventListener('click', function() {
                taskFormContainer.classList.toggle('active');
            });
        });
    </script>
</body>
</html>
