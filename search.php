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

<h2>Search by name of the recipe</h2>
<?php 
echo '<form action="instructions2.php" method="post">';
echo '<input class = "textbox" type = "text" name="recipe" placeholder="Search Recipe"\> <br/>';
echo '<input class = "button" type="submit" name="get_instructions" value="Get Instructions!"/>';
echo '</form>';
?>

<!-- <br/> -->

<h1>OR</h1>

<h2>Search by recipe category</h2>
<h3>Select a category from below</h3>
<?php
echo '<form action="cat.php" method="post">';
echo '<label class="mycheckbox"><input type="radio" name="category" value="dessert">Dessert<span class="checkboxmark"></span></label><br/>';
echo '<label class="mycheckbox"><input type="radio" name="category" value="salad">Salad<span class="checkboxmark"></span></label><br/>';
echo '<label class="mycheckbox"><input type="radio" name="category" value="breakfast">Breakfast<span class="checkboxmark"></span></label><br/>';
echo '<label class="mycheckbox"><input type="radio" name="category" value="lunch">Lunch<span class="checkboxmark"></span></label><br/>';
echo '<label class="mycheckbox"><input type="radio" name="category" value="dinner">Dinner<span class="checkboxmark"></span></label><br/>';
echo '<label class="mycheckbox"><input type="radio" name="category" value="appetizer">Appetizer<span class="checkboxmark"></span></label><br/>';
echo '<input class = "button" type = "submit" name = "search_cat" value = "Search recipes!"/>';
echo '</form>';
?>