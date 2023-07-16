import 'package:flutter/material.dart';
import 'detail.dart';
import 'recipe.dart';

void main() => runApp(Menu());

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(
            child: Text(
                'Recipe Calculator'
            ),
          ),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (BuildContext context, int index) {
              return RecipeCard(recipe: Recipe.samples[index]);
            },
          ),
        ),
      ),
    );
  }
}

class RecipeCard extends StatefulWidget {
  Recipe recipe;

  RecipeCard({required this.recipe});

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(recipe: widget.recipe)));
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Image.asset(widget.recipe.imageUrl),
            SizedBox(
              height: 15.0,
            ),
            Text(
                widget.recipe.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}

