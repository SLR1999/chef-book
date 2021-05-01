<link rel="stylesheet" href="recipes_style.css" />
<body>
<?php
header("Access-Control-Allow-Origin: *");
    $db_hostname = "localhost";
    $db_username = "root";
    $db_password = "";
    $db_name = "chefbook";
    $connection = mysqli_connect($db_hostname, $db_username, $db_password, $db_name);
?>
<div class="header">
   <h1 class= "mainheading"> ChefBook </h1>
   <h3> Tell us your ingredients and we will suggest you recipes!</h3>
   <br/>
   <img src="chef.jpg">
</div>
<?php
    if(isset($_POST['get_recipe'])){
      if(!empty($_POST['ingredients_list'])) {
        $ingredients_count = count($_POST['ingredients_list']);
        foreach($_POST['ingredients_list'] as $selected) {
          $sql_query1 =  "UPDATE Ingredients SET is_selected = '1' WHERE ingredient_id ='". $selected."'";
          mysqli_query($connection,$sql_query1);
        }
      }
    }
    $sql_query2 = "SELECT recipe_name,recipe_id from Recipes WHERE recipe_id in (SELECT recipe_id FROM (select recipe_id,SUM(is_selected) as s ,COUNT(recipe_id) as c from Recipe_Ingredients LEFT JOIN Ingredients ON Ingredients.ingredient_id = Recipe_Ingredients.ingredient_id GROUP BY recipe_id) t  WHERE s=c)";
    $result1 = mysqli_query($connection,$sql_query2);
    $sql_query3 = "SELECT ingredient_id FROM Ingredients";
    $result2 = mysqli_query($connection,$sql_query3);
    while($row = mysqli_fetch_assoc($result2))
    {
      $sql_query4 =  "UPDATE Ingredients SET is_selected = '0' WHERE ingredient_id ='".$row["ingredient_id"]."'";
      mysqli_query($connection,$sql_query4);
    }
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
