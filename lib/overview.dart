class Overview {
  String label;
  String imageUrl;
  
  int servings;
  List<Ingredient> ingredients;


  Overview(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );
  
  static List<Overview> samples = [
    Overview(
      'Espresso',
      'assets/espresso.jpg',
      1,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
    Overview(
      'Cappuccino',
      'assets/cappuccino.jpg',
       1,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
    Overview(
      'Americano',
      'assets/americano.png',
       1,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
    Overview(
      'Mocha',
      'assets/mocha.png',
       1,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
    Overview(
      'Latte',
      'assets/latte.jpg',
       1,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
    Overview(
      'Matcha Latte',
      'assets/matcha.jpg',
       1,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
    Overview(
      'Thai Tea Latte',
      'assets/thai_tea.jpg',
       1,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}

