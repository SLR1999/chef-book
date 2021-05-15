<link rel="stylesheet" href="recipes_style.css" />
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
<?php
    $cat = mysqli_real_escape_string($connection,$_POST['category']);
    $sql_query2 = "SELECT recipe_name,recipe_id from Recipes WHERE category = '$cat'";
    $result1 = mysqli_query($connection,$sql_query2);
    
    echo '<div><h3>Select a recipe from below</h3></div>';
    if (mysqli_num_rows($result1) > 0) {
      echo '<form action="instructions.php" method="post">';
      while($row = mysqli_fetch_assoc($result1))
      {
        echo '<div> <label class="mycheckbox">'.$row['recipe_name'].
        '<input type="radio" name="id"  value='.$row['recipe_id'].' > <span class="checkboxmark"></span>
        </label></div>';
      }
      echo '<input class = "button" type = "submit" name = "get_instructions" value = "Get Instructions!"/>';
      echo '</form>';
    }
    else {
      //  Echo "OOps! No ingredients found!"."\n";
      //  Echo "
      echo '<div><h2>OOps! No recipes found!</h2></div>';
    }
    mysqli_close($connection);
?>
