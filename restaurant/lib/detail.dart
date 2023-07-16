import 'package:flutter/material.dart';
import 'recipe.dart';

class DetailPage extends StatefulWidget {
  Recipe recipe;

  DetailPage({required this.recipe});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.grey,
        title: Center(
          child: Text(
              widget.recipe.label
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(widget.recipe.imageUrl),
          Text(
            widget.recipe.label,
            style: TextStyle(
              fontSize: 20.0
            ),
          ),
          SizedBox(
            height: 200.0,
            child: ListView.builder(
              padding: const EdgeInsets.all(5),
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                final ingredient = widget.recipe.ingredients[index];
                final adjustedQuantity =
                (ingredient.quantity * widget.recipe.servings).toStringAsFixed(1);
                return Text(
                  '$adjustedQuantity ${ingredient.measure} ${ingredient.name}',
                );
              },
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: SliderTheme(
                data: SliderThemeData(
                  thumbColor: Colors.green,
                  trackHeight: 6.0,
                  activeTrackColor: Colors.green,
                  inactiveTrackColor: Colors.black
                ),
                child: Slider(
                  value: widget.recipe.servings.toDouble(),
                  min: 1.0,
                  max: 20.0,
                  divisions: 10,
                  onChanged: (double value) {
                    setState(() {
                      widget.recipe.servings = value.toInt();
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

