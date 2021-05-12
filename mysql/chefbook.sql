use mychefbook;


create table Ingredients(
  ingredient_id int AUTO_INCREMENT,
  ingredient_name varchar(30) NOT NULL,
  is_selected tinyint(1),
  constraint pk_department PRIMARY KEY (ingredient_id)
);


create table Recipes(
  recipe_id int AUTO_INCREMENT,
  recipe_name varchar(30) NOT NULL,
  cooking_time int NOT NULL,
  calories int,
  category varchar(30),
  instructions varchar(1000) NOT NULL,
  verified tinyint(1),
  recipe_image varchar(100),
  constraint pk_department PRIMARY KEY (recipe_id)
);


-- create table Comments(
--   comment_id int AUTO_INCREMENT,
--   recipe_id int,
--   comment varchar(100),
--   comment_date date,
--   constraint pk_department PRIMARY KEY (comment_id)
-- );


create table Recipe_Ingredients(
  recipe_ingredient_id int AUTO_INCREMENT,
  recipe_id int,
  ingredient_id int,
  quantity varchar(50),
  constraint pk_department PRIMARY KEY (recipe_ingredient_id)
);

-- alter table Comments
--   add constraint fk_recipe_id_comments FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id);
alter table Recipe_Ingredients
  add constraint fk_recipe_id_recipe_ingredients FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
  add constraint fk_ingredient_id_recipe_ingredients FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id);

  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(1,'onion',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(2,'olive oil',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(3,'pepper',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(4,'oreos',1);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(5,'peanut butter cups',1);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(6,'mealted chocolate',1);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(7,'tomato',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(8,'garlic',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(9,'brownie mix',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(10,'peanut butter',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(11,'cookie dough',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(12,'pasta',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(13,'salt',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(14,'chicken',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(15,'milk',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(16,'eggs',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(17,'flour',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(18,'cheese',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(19,'biscuits',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(20,'ketchup',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(21,'rice',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(22,'capcicum',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(23,'butter',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(24,'curd',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(25,'soya sauce',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(26,'green chillies',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(27,'mint leaves',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(28,'paneer',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(29,'lemon',0);
  insert into Ingredients(ingredient_id,ingredient_name,is_selected)
    VALUES(30,'potato',0);



  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
    VALUES(1,'Roasted Onions',
      'Adjust oven rack to lowest position; heat to 425 degrees.Cut onions in half; toss with oil and a generous sprinkle of salt and pepper.Place, cut-side down, on a lipped cookie sheet.Roast until tender and cut surfaces are golden brown, 25 to 30 minutes. Adjust seasonings; drizzle with balsamic vinegar.',
      30,54,'salad',1,'pics/1.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
    VALUES(2,'Stuffed Oreos',
      'Twist apart the Oreos - separate the ones WITH icing to use for the sandwiches.The ones WITHOUT icing for toppings.Place the peanut butter Cup between the Oreos, Give them a little squeeze so the filling sticks to the cup.Melt the Chocolate - then dip the sandwich in the Melted Chocolate. You can add a little shortening to thin it out. Use a fork to keep them pretty.Garnish with some MORE crushed Oreos',
      10,478,'dessert',1,'pics/2.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
    VALUES(3,'Tomato and garlic sauce',
      'Slice tomatoes in half. Slice top 1/2 inch off of garlic to expose cloves. Arrange garlic and tomatoes (cut side up) on foil-lined baking dish. Drizzle olive oil over garlic.(This will keep garlic from drying out and getting bitter.)Sprinkle with salt and pepper.Roast in 350 degree oven for 50-60 minutes. Remove from oven and let cool for easier handling.Pour juice out of tomatoes. Discard juice. Squeeze tomato pulp and roasted garlic into blender or food processor. Dicard tomato skins and garlic paper.Blend or process for 5-10 seconds to obtain a smooth consistency.',
      60,43,'dip',1,'pics/3.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
    VALUES(4,'Oreo peanut butter brownies',
      'Preheat oven to 350 degrees and line a 12 muffin cup baker with paper liners.Prepare brownie mix according to package instructions.For each cupcake cup spread 1 teaspoon of peanut butter over 2 Oreo cookies and stack them on top of each other.Place oreo stacks into the cupcake lined muffin cups.Spoon 2 tablespoons of brownie batter over each stacked oreos and let it run down the sides of the cookies.If you have left over brownie batter, bake separately in a separate baker or muffin tin.Bake cookies and brownies for 18 to 20 minutes, until brownies are cooked through.',
      30,544,'dessert',1,'pics/4.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
    VALUES(5,'Cookie brownies',
      'Preheat oven to 350F. Spray a 12 count cup cake pan.Mix brownie mix as directed.Unroll cookie dough.Add 1/4 part brownie mix and a piece of cookie dough on top.Should be 3/4th.Bake for 10-15 minutes.',
      25,300,'dessert',1,'pics/5.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
    VALUES(6,'Pasta',
      'Cook your pasta in the usual way.The amount depends on how hungry you are.In a small heavy pan (or very carefully in a light one) heat the oil with the garlic the black pepper and the salt."fry"the garlic until it has gone very slightly golden.Turn off the heat and let it stand until the pasta is cooked.Mix the pasta with the oil and garlic and enjoy.',
      15,524,'pasta',1,'pics/6.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
  	VALUES(7,'Crispy Chicken Wings',
  	'heat oil in a sauce dip chicken wing in egg whites beaten roll in flour mixture with salt and pepper test oil if its hot, then deepfry chicken wings for 5 minutes Serve with hot chips, or any salad',
  	8,364,'fried food',1,'pics/7.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
  	VALUES(8,'Comfort Breakfast Casserole',
  	'Mix your eggs and milk in a large bowl. Cut each biscuit (I’m all about scissors in the kitchen) into fours and add it to the bowl. I like to do this before I cook the bacon or cut up the scallions – give the biscuits some time to really soak in the eggs.Cut up your scallions, shred your cheese, cook and break up your bacon (or sausage). Add everything to the bowl. Mix it all up and pour into your pan. Bake at 350 for 25-30 minutes .. closer to 30 so it isnt runny.',
  	35,532,'breakfast',1,'pics/8.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
  	VALUES(9,'Crispy Cheese Bites',
  	'Preheat a nonstick frying pan on a medium-high heat.Place a single layer of cheese in the hot pan. It will melt and then become crispy.After it turns ?golden? on one side, flip carefully with a spatula onto the other side.When golden, remove onto paper towels to blot the excess oil. (American cheese does not seem to need blotting.I like to eat this dipped in ketchup.',
  	5,94,'appetizer',1,'pics/9.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
  	VALUES(10,'Easy Hard Boiled Eggs',
  	'Fill a small, medium or large pan 3/4 full with tapwater (depending on how many eggs you desire to cook).  Place on the stove over High heat. Once water reaches a boil, place desired quantity of eggs in the water using a Tablespoon or measuring cup. Turn heat down to med-high to prevent overflow. Let eggs BOIL for 5 minutes then SHUT THE HEAT OFF and let them sit in the hot water for 15 more minutes. After 15 minutes, run cold water into the pan until only cool water is left. Crack and peel your beautifully cooked, perfect eggs. Sprinkle with salt and/or pepper for a snack or use in any recipe calling for hard boiled eggs! ENJOY!',
  	10,63,'snacks',1,'pics/10.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
  	VALUES(11,'Yorkshire Pudding',
  	'Beat the eggs together until light. Beat in the remaining ingredients well.  (should have the consistency of cream). Let stand, covered for 1 hour at room temperature.(This is a really important step) Fill muffin tins 1/4 full of oil or drippings and put into a hot oven until the fat is sizzling hot. (450*F/230C) Fill each muffin cup half full of batter, Place in a 450F oven and bake for 20 minutes, gradually lowering the oven temperature every 5 minutes by 25 degrees until puffed, crispy and brown.',
  	60,62,'salad',1,'pics/11.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
  	VALUES(12,'Lemon Rice',
  	'Squeeze lemons in boiled rice, add termaric, chillies, peanuts fried in oil and mix it thoroughly'
  	,30,513,'lunch',1,'pics/12.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
  	VALUES(13,'Paneer tikka',
  	'Marinate the paneer with spices and yogurt, let it sit for a bit so that the flavors mix well together and then arrange the paneer cubes along with onion and peppers in a skewer and grill'
  	,45,524,'starter',1,'pics/13.jpg');
  insert into Recipes(recipe_id,recipe_name,instructions,cooking_time,calories,category,verified, recipe_image)
  	VALUES(14,'Paneer Butter Masala',
  	'Soak 18 to 20 cashews in ⅓ cup hot water for 20 to 30 minutes, When the cashews are soaking, you can prep the other ingredients like chopping tomatoes, chopping and preparing the ginger-garlic paste, slicing paneer etc, Crush 1-inch ginger + 3 to 4 medium-sized garlic to a paste in a mortar pestle to a semi-fine or fine paste. Keep aside. Don’t add any water while crushing ginger & garlic, Blend to a smooth paste without any tiny bits or chunks of cashews. Remove the cashew paste in a bowl and set aside, Serve Paneer Butter Masala hot garnished with 1 to 2 tablespoons of chopped coriander leaves (cilantro) and the remaining ginger julienne.'
  	,50,823,'lunch/dinner',1, 'pics/14.jpg');





  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(1,1,1,'4 medium');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(2,1,2,'2 table spoons');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(3,1,3,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(4,1,13,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(5,2,4,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(6,2,5,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(7,2,6,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(8,3,7,'4 large');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(9,3,8,'1 head');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(10,3,2,'1 table spoon');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(11,4,9,'1 box');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(12,4,4,'24 cookies');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(13,4,10,'1/2 cup');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(14,5,11,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(15,5,9,'1 box');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(16,6,12,'For one');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(17,6,8,'1/2 head');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(18,6,2,'4 table spoons');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(19,6,3,'half table spoon');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(20,6,13,'1 pinch');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(21,7,14,'one kg');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(22,7,16,'4 whites');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(23,7,17,'one cup');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(24,7,13,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(25,7,3,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(26,7,2,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(27,8,16,'5');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(28,8,15,'1/4th cup');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(29,8,19,'16 oz refrigerated');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(30,8,1,'4');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(31,8,18,'1 cup shredded');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(32,8,14,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(33,9,18,'1 ounce sliced');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(34,9,20,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(35,10,16,'any number you want');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(36,11,16,'2')	;
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(37,11,13,'1 table spoon');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
  	VALUES(38,11,15,'1+1/3rd cup');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
    VALUES(39,11,17,'1 cup');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
    VALUES(40,11,2,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
    VALUES(41,12,29,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
    VALUES(42,13,28,'');
  insert into Recipe_Ingredients(recipe_ingredient_id,recipe_id,ingredient_id,quantity)
    VALUES(43,14,28,'');
  -- insert into Comments(comment_id,recipe_id,comment,comment_date)
  --   VALUES(1,2,'Very tasty','2017-05-11');
  -- insert into Comments(comment_id,recipe_id,comment,comment_date)
  --   VALUES(2,3,'It is soo good','2015-03-01');
  -- insert into Comments(comment_id,recipe_id,comment,comment_date)
  --   VALUES(3,2,'Yummy!!','2017-03-15');
  -- insert into Comments(comment_id,recipe_id,comment,comment_date)
  --   VALUES(4,6,'It is okay,thought would be better','2013-04-19');
  -- insert into Comments(comment_id,recipe_id,comment,comment_date)
  --   VALUES(5,11,'Delicious!!','2016-02-14');
  -- insert into Comments(comment_id,recipe_id,comment,comment_date)
  --   VALUES(6,9,'Very tasty','2017-10-11');
