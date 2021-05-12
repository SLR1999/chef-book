<link rel="stylesheet" href="home_style.css" />
<body>
<?php
header("Access-Control-Allow-Origin: *");
    $db_hostname = "localhost";
    $db_username = "root";
    $db_password = "";
    $db_name = "mychefbook";
    $connection = mysqli_connect($db_hostname, $db_username, $db_password, $db_name);
?>
<div class="header">
   <h1 class= "mainheading"> ChefBook </h1>
   <h3> Tell us your ingredients and we will suggest you recipes!</h3>
   <br/>
   <img src="chef.jpg">
</div>

<h1>Hungry? <br/><br/></h1>
<h3>Choose your ingredients and find recipes to cook!</h3>
<?php 
echo '<form action="ingredients.php" method="post">';
echo '<input class = "button" type="submit" name="select_ingredients" value="Select Ingredients!"/>';
echo '</form>';
?>
<h2>OR</h2>
<h3>
Search a recipe to cook!</h3>
<!-- <br/> -->
<?php 
echo '<form action="instructions2.php" method="post">';
echo '<input class = "textbox" type = "text" name="recipe" placeholder="Search Recipe"\> <br/>';
echo '<input class = "button" type="submit" name="get_instructions" value="Get Instructions!"/>';
echo '</form>';
?>