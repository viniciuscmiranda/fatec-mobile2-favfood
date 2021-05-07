import 'ingredient.dart';

class Recipe {
  String label;
  String imageUrl;
  List<Ingredient> ingredients;
  String directions;

  Recipe(this.label, this.imageUrl, this.ingredients, {this.directions = ""});

  static var samples = [
    Recipe(
        'Bolo de Cenoura',
        'assets/images/bolo-de-cenoura.jpg',
        [
          // Massa
          Ingredient('1/2', 'xícara (chá) de', 'Óleo'),
          Ingredient('3', '', 'Cenouras médias raladas'),
          Ingredient('4', '', 'Ovos'),
          Ingredient('2', 'xícaras (chá) de', 'Açúcar'),
          Ingredient('3/4', 'xícaras (chá) de', 'Farinha de trigo'),
          Ingredient('1', 'colher (sopa) de', 'Fermento em pó'),

          // Cobertura
          Ingredient('1', 'colher (sopa)', 'de Manteiga'),
          Ingredient('3', 'colheres (sopa)', 'de Chocolate em pó'),
          Ingredient('1', 'xícara (chá)', 'de Açúcar'),
          Ingredient('1', 'xícara (sopa)', 'de Leite'),
        ],
        directions:
            "Labore pariatur duis ipsum elit culpa in excepteur. Laborum ut dolore do officia. Anim voluptate et et anim do veniam. Irure tempor culpa sint nostrud duis laboris ea sunt incididunt voluptate anim veniam nulla. Lorem non Lorem ipsum commodo magna officia esse. Laborum eiusmod cillum laboris voluptate dolore commodo nostrud ea do velit pariatur. Sint labore eiusmod deserunt aliqua non sunt in enim qui excepteur minim mollit."),
    Recipe(
      'Chocolate Quente',
      'assets/images/chocolate-quente.jpg',
      [
        // Massa
        Ingredient('1/2', 'xícara (chá) de', 'Leite'),
        Ingredient('1', 'colher (sopa) de', 'Amido de milho'),
        Ingredient('3', 'colheres (sopa) de', 'Chocolate em pó'),
        Ingredient('4', 'colheres (sopa) de', 'Açúcar'),
        Ingredient('1', '', 'Canela em pau'),
        Ingredient('1', 'caixa de', 'Creme de leite'),
      ],
    ),
    Recipe(
      'Pave de Bis',
      'assets/images/pave-de-bis.jpg',
      [
        Ingredient('1', 'lata de', 'Leite condensado'),
        Ingredient('1', 'litro de', 'Leite'),
        Ingredient('4', 'colheres (sopa) de', 'Amido de milho'),
        Ingredient('2', '', 'Ovos separados'),
        Ingredient('2', 'caixas de', 'Bis picado'),
        Ingredient('1', 'xícara de', 'Açúcar'),
        Ingredient('1', 'lata de', 'Creme de leite'),
      ],
    ),
    Recipe(
      'Strogonoff',
      'assets/images/strogonoff.jpg',
      [
        Ingredient('3', '', 'Peitos de frango cortados em cubos'),
        Ingredient('1', '', 'Dente de alho picado'),
        Ingredient('0', '', 'Sal e pimenta a gosto'),
        Ingredient('1', '', 'Cebola picada'),
        Ingredient('2', 'colheres (sopa) de', 'Maionese'),
        Ingredient('1', 'colher (sopa) de', 'Manteiga'),
        Ingredient('1/2', 'copo de', 'Ketchup'),
        Ingredient('1/3', 'copo de', 'Mostarda'),
        Ingredient('1', 'copo de', 'Cogumelos'),
        Ingredient('1', 'copo de', 'Creme de leite'),
        Ingredient('', '', 'Batata palha a gosto'),
      ],
    ),
  ];
}
