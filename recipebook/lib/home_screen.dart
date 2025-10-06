import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {'name': "Chicken Piccata",
      'ingredients': '2 Chicken Breasts,  6 Tbsp Butter, 5 Tbsp Olive Oil, ~1/3 Cup Lemon Juice, Flour, 1/2 Cup Chicken Stock, 1/3 Cup Capers, 1/3 Cup Parsley',
      'instructions': 'Season chicken breasts and dredge in flour. Melt butter in skillet and add chicken breasts, cooking each side for about 3 minutes then remove. Into same pan add lemon juice, stock, and capers. Bring to boil then re-add chicken breasts. Add any remaining butter.',
      'from': 'https://www.foodnetwork.com/recipes/giada-de-laurentiis/chicken-piccata-recipe2-1913809',
    },

    {'name': "Lemon Bars",
      'ingredients': '2 Cups Flour, 1 Cup Butter, 1/2 Cup Sugar, 4 Eggs, 2 Lemons (juiced)',
      'instructions': 'Blend flour, butter, and sugar into bowl until crust is formed. Press crust into pan, and blind bake crust for 15 minutes at 350°F. For filling, whisk remaining sugar and flour into bowl with eggs and lemon juice. Pour over crust and finally bake for 20 minutes. Cut into squares.',
      'from': 'https://www.allrecipes.com/recipe/10294/the-best-lemon-bars/',
    },

    {'name': "Hotteok",
      'ingredients': '1 Package Active Dry Yeast, 1/3 Cup Warm Water, 2 1/2 Cups Flour, 1 Tsp Salt, 1 Tbsp Sugar, 1 Tbsp Cooking Oil, 1 1/4 Cups Milk, 1/2 Cups Brown Sugar, 1 Tsp Cinnamon',
      'instructions': 'Add warm water to bowl and stir in sugar and yeast. Sift flour, sugar, and salt together and add the yeast water, oil, and milk to the flour mix. Knead until a smooth dough is formed and let rise for about an hour. Heat pan with oil. Tear a piece of the dough off and flatten the ball. Fill with brown sugar and pinch edges to form a ball. Flatten dough ball in pan with spatula and fry both sides until golden brown.',
      'from': 'https://www.koreanbapsang.com/hotteok-sweet-korean-pancakes/',
    },
  ]; //recipe data will go here

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('My Favorite Recipes')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(recipe['name']!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                //navigates to the details screen 
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}