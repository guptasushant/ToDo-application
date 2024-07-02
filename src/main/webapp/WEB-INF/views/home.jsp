<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sidebar Menu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> <!-- Font Awesome for icons -->
    <style>
        body {
            font-family: "Poppins", sans-serif;
            background: #fafafa;
        }

        .wrapper {
            display: flex;
            width: 100%;
            align-items: stretch;
        }

        #sidebar {
            min-width: 250px;
            max-width: 250px;
            background: #ffcc00;
            color: #fff;
            transition: all 0.3s;
            position: fixed;
            height: 100%;
            z-index: 1;
            left: -250px;
            overflow-x: hidden;
            padding-top: 20px;
        }

        #sidebar.active {
            left: 0;
        }

        #sidebar .sidebar-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background: #ffcc00;
        }

        #sidebar .sidebar-header .close-sidebar {
            color: #fff;
            font-size: 1.5em;
            cursor: pointer;
        }

        #sidebar ul.components {
            padding: 20px 0;
            border-bottom: 1px solid #ffcc00;
        }

        #sidebar ul p {
            color: #fff;
            padding: 10px;
        }

        #sidebar ul li a {
            padding: 10px;
            font-size: 1.1em;
            display: block;
            color: #333;
        }

        #sidebar ul li a:hover {
            color: #fff;
            background: #ff9900;
        }

        #sidebar ul li.active > a, a[aria-expanded="true"] {
            color: #fff;
            background: #ff9900;
        }

        a[data-toggle="collapse"] {
            position: relative;
        }

        .navbar {
            background-color: #ffcc00;
            color: #fff;
        }

        /* Toggle button style */
        #sidebarCollapse {
            color: #fff;    
            background-color: #ffcc00;
            border: none;
            padding: 10px 15px;
            font-size: 1.5em;
            cursor: pointer;
            position: absolute;
            top: 20px;
            left: 10px;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <!-- Sidebar -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Todo App</h3>
                <i class="fas fa-times close-sidebar" id="sidebarClose"></i>
            </div>

            <ul class="list-unstyled components">
                <li class="active">
                    <a href="/home" aria-expanded="false">
                        <i class="fas fa-home"></i> Home
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="/fetch">get data</a>
                        </li>
                        <li>
                            <a href="/register">Go to register</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-clipboard"></i> Report
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-user"></i> Profile
                    </a>
                </li>
                <li>
                    <a href="/login" class="btn" style="text-decoration:none"><button type="button">Login</button></a>
                </li>
            </ul>
        </nav>

        <!-- Page Content -->
        <div id="content">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <button type="button" id="sidebarCollapse">
                        <i class="fas fa-bars"></i> <!-- Initial bar icon -->
                    </button>
                </div>
            </nav>
        </div>     
            <!-- Header -->
            <div class="container" align="center">
                <div class="text-center mt-4">
                    <h1>Welcome to Todo Application</h1>
                </div>
            </div>
    </div>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                if ($('#sidebar').hasClass('active')) {
                    $('#sidebarCollapse i').removeClass('fa-bars').addClass('fa-times'); // Change icon to close icon
                } else {
                    $('#sidebarCollapse i').removeClass('fa-times').addClass('fa-bars'); // Change icon to bars icon
                }
            });

            $('#sidebarClose').on('click', function () {
                $('#sidebar').removeClass('active');
                $('#sidebarCollapse i').removeClass('fa-times').addClass('fa-bars'); // Change icon to bars icon
            });
        });
    </script>
</body>
</html>
