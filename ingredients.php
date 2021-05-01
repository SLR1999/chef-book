<link rel="stylesheet" type="text/css" href="ingredients_style.css" />

<?php 
header("Access-Control-Allow-Origin: *");
?>

<body>
<div>
	<!-- <img src="CWWYH.jpg" class = "center" > -->
	<div class="header">
   <h1 class= "mainheading"> ChefBook </h1>
   <h3> Tell us your ingredients and we will suggest you recipes!</h3>
   <br/>
   <img src="chef.jpg">
   </div>

   <h3>Select Ingredients from below</h3>
    
    <?php
    $db_hostname = "localhost";
    $db_username = "root";
    $db_password = "";
    $db_name = "mychefbook";
    $connection = mysqli_connect($db_hostname, $db_username, $db_password, $db_name);
    
    $sql_query = "SELECT ingredient_name, ingredient_id FROM Ingredients";
    $result = mysqli_query($connection, $sql_query);
    
    if(mysqli_num_rows($result) > 0) 
    {
        echo '<form action="recipes.php" method="post">';
       	while($row = mysqli_fetch_assoc($result)) 
        {
 				   echo '<label class ="mycheckbox">'.$row["ingredient_name"].
         	   '<input type="checkbox"  name = "ingredients_list[]" value = '.$row["ingredient_id"].' > <span class="checkboxmark"></span> </label>';
		}
		echo '<input class = "button" type = "submit" name = "get_recipe" value = "Get me recipes!"/>';
		echo '</form>';
    }

    else 
    {
         Echo "OOps! No ingredients found!"."\n";
         Echo "Database Empty!"."\n";
    }
    mysqli_commit($connection);
    mysqli_close($connection);
    ?>

</div>
  </body>