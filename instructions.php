<link rel="stylesheet" href="instructions_style.css" />
<?php
    $db_hostname = "localhost";
    $db_username = "root";
    $db_password = "";
    $db_name = "chefbook";
    $connection = mysqli_connect($db_hostname, $db_username, $db_password, $db_name);
    $sql_query1 = "SELECT * FROM Recipes WHERE recipe_id = ".$_POST['id'];
    $result1 = mysqli_query($connection,$sql_query1);
?>
<body>
<div>
<div class="header">
   <h1 class= "mainheading"> ChefBook </h1>
   <h3> Tell us your ingredients and we will suggest you recipes!</h3>
   <br/>
   <img src="chef.jpg">
</div>
<div>
<h1 class="recipename">

  <?php
    $result1 = mysqli_query($connection,$sql_query1);
    echo mysqli_fetch_assoc($result1)['recipe_name'];
  ?>
</h1>
<img class="goimg" src="go.png">
<h2 class="More_Info">
  <?php
    $result1 = mysqli_query($connection,$sql_query1);
    echo nl2br("It just takes: ".mysqli_fetch_assoc($result1)['cooking_time']." minutes\n");
    $result1 = mysqli_query($connection,$sql_query1);
    echo nl2br("It is for: ".mysqli_fetch_assoc($result1)['category']."\n");
    $result1 = mysqli_query($connection,$sql_query1);
    echo nl2br("You burn: ".mysqli_fetch_assoc($result1)['calories']." calories");
  ?>
</h2>
<h2>Cooking Instructions:</h2>
<h2 class="xbootstrap">
  <?php
    $result1 = mysqli_query($connection,$sql_query1);
    echo mysqli_fetch_assoc($result1)['instructions'];
  ?>
</h2>
</div>
<div class="header2">
<h1 >THANK YOU!</h1>
<br/>
<!-- <img class="tyimg" src="finalchef.jpg"> -->
<div>
</div>
  </body>