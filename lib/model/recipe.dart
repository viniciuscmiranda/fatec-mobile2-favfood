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
          "Em um liquidificador, adicione a cenoura, os ovos e o óleo, depois misture. Acrescente o açúcar e bata novamente por 5 minutos. Em uma tigela ou na batedeira, adicione a farinha de trigo e depois misture novamente. Acrescente o fermento e misture lentamente com uma colher. Asse em um forno preaquecido a 180° C por aproximadamente 40 minutos. Despeje em uma tigela a manteiga, o chocolate em pó, o açúcar e o leite, depois misture. Leve a mistura ao fogo e continue misturando até obter uma consistência cremosa, depois despeje a calda por cima do bolo.",
    ),
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
      directions:
          "Em um liquidificador, bata o leite, o amido de milho, o chocolate em pó e o açúcar.Despeje a mistura em uma panela com a canela e leve ao fogo baixo, mexendo sempre até ferver.Desligue, adicione o creme de leite e mexa bem até obter uma mistura homogênea.Retire a canela e sirva quente.",
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
      directions:
          "Misture o leite condensado, o leite, a maisena, as gemas e leve ao fogo. Mexa sempre até engrossar e reserve. Forre o fundo de uma forma refratária grande com metade do creme. Forme uma camada com o chocolate picado e complete com o restante do creme. Bata as claras em neve e acrescente o açúcar, aos poucos, batendo sempre, até obter um suspiro firme. Junte o creme de leite e mexa bem. Coloque essa mistura por cima do creme e leve à geladeira até a hora de servir.",
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
      directions:
          "Em uma panela, misture o frango, o alho, a maionese, o sal e a pimenta. Em uma frigideira grande, derreta a manteiga e doure a cebola. Junte o frango temperado até que esteja dourado. Adicione os cogumelos, o ketchup e a mostarda. Incorpore o creme de leite e retire do fogo antes de ferver. Sirva com arroz branco e batata palha.",
    ),
  ];
}
