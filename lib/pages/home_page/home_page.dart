import 'package:favfood/model/recipe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:favfood/pages/home_page/widgets/recipe_card_widget.dart';
import 'package:favfood/pages/details_page/details_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff7AADFF),
        accentColor: Color(0xff4284C7),
        scaffoldBackgroundColor: Color(0xffF5F9FF),
        primaryTextTheme: TextTheme(
          headline6: GoogleFonts.quicksand(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        textTheme: TextTheme(
          bodyText2: GoogleFonts.quicksand(
            color: Color(0xff0E1012),
            fontSize: 16,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My FavFood',
          ),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (context, int index) {
              var recipe = Recipe.samples[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(recipe: recipe)));
                },
                child: RecipeCardWidget(
                  recipe: recipe,
                ),
              );
            },
          ),
        ),
        /*    floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.favorite),
        ), */
      ),
    );
  }
}
