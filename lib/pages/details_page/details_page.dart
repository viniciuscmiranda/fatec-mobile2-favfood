import 'package:flutter/material.dart';
import 'package:favfood/model/recipe.dart';

class DetailsPage extends StatefulWidget {
  final Recipe recipe;
  const DetailsPage({this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.label),
      ),
      body: Center(
        child: Text(recipe.imageUrl),
      ),
    );
  }

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                widget.recipe.label,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
                  child: Text(
                    "Modo de Preparo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text(widget.recipe.directions),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
                child: Text(
                  "Ingredientes",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ]),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 8, left: 24),
                  itemCount: widget.recipe.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];
                    var text = '';

                    if (ingredient.quantity != "") {
                      if (ingredient.measure != "") {
                        text =
                            '${ingredient.quantity} ${ingredient.measure} ${ingredient.name}';
                      } else {
                        text = '${ingredient.quantity} ${ingredient.name}';
                      }
                    } else {
                      text = '${ingredient.name}';
                    }

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
