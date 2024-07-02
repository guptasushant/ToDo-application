<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sushant Gupta - Portfolio</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

header {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 50px 0;
}

nav {
	display: flex;
	justify-content: center;
	background-color: #444;
	padding: 10px 0;
}

nav a {
	color: #fff;
	text-decoration: none;
	padding: 15px;
	margin: 0 10px;
	transition: color 0.3s ease;
}

nav a:hover {
	color: #00bcd4;
}

section {
	padding: 50px 20px;
}

.project, .education, .skills, .contact {
	margin-bottom: 50px;
}

.project img {
	max-width: 100%;
	height: auto;
}

form {
	display: flex;
	flex-direction: column;
	max-width: 400px;
	margin: 0 auto;
}

label {
	margin-bottom: 10px;
}

input, textarea {
	margin-bottom: 20px;
	padding: 10px;
}
</style>
</head>
<body>

	<header>
		<h1>Sushant Gupta</h1>
		<p>Hiii ! my name is Sushant i am an BSc.IT graduated and
			currently looking for a job in IT field just a normal person who
			wants to be creative person and get myself a 9 to 5 job</p>
	</header>

	<nav>
		<a href="#projects">Projects</a> <a href="#education">Education</a> <a
			href="#skills">Skills</a> <a href="#contact">Contact</a>
	</nav>
	<section id="projects" class="project">
		<h2>Projects</h2>
		<div>
			<img src="project1.jpg" alt="Project 1">
			<p>To generate Bank account number on basis of customer
				information</p>
		</div>
		<div>
			<img src="project2.jpg" alt="Project 2">
			<p>CRUD using Servlet</p>
		</div>
		<!-- Add more projects as needed -->
	</section>

	<section id="education" class="education">
		<h2>Education</h2>
		<p>Your Degree, University, Graduation Year</p>
		<!-- Add more education details as needed -->
	</section>

	<section id="skills" class="skills">
		<h2>Skills</h2>
		<p>Skilled in CoreJava,servlet,jsp,Collection framework,mysql,JDBC</p>
		<!-- Add more skills as needed -->
	</section>

	<section id="contact" class="contact">
		<h2 align="center"">Enter your details to get in touch !</h2>
		<form>
			<label for="name">Name:</label> <input type="text" id="name"
				name="name" required> <label for="email">Email:</label> <input
				type="email" id="email" name="email" required> <label
				for="message">Message:</label>
			<textarea id="message" name="message" rows="4" required></textarea>

			<input type="submit" value="Send Message">
		</form>
	</section>
	<!--Script done by another developer-->
	<script>
        // Smooth scrolling
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();

                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });
    </script>

</body>
</html>
