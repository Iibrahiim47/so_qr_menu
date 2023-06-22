class DrinksModelClass {
  String? name;
  String? image;
  String? description;
  String? price;

  DrinksModelClass({this.name, this.image, this.description, this.price});
  static List<DrinksModelClass> drinksModelClass = [
    DrinksModelClass(
      description:
          'Combination of peach & passionfruit with lime syrup top up with soda',
      price: '26 AED',
      name: 'So Bright ',
      image: 'https://i.postimg.cc/XvMkY7N1/sobright1.jpg',
    ),
    DrinksModelClass(
      description:
          'Combination of fig & strawberry with lime syrup top up with soda',
      price: '26 AED',
      name: 'So Lovely ',
      image: 'https://i.postimg.cc/7LgMG8fH/solovely.jpg',
    ),
    DrinksModelClass(
      description:
          'Organic green tea smooth & elegant with soft with nutty notes',
      price: '14 AED',
      name: 'Green Tea ',
      image: 'https://i.postimg.cc/3NrBQSrK/green-tea.jpg',
    ),
    DrinksModelClass(
      description: 'Can be served normal or cold.',
      price: '10 AED',
      name: 'Sprite ',
      image: 'https://i.postimg.cc/Yq93XsyR/sprite.jpg',
    ),
    DrinksModelClass(
      description: 'Can be served normal or cold.',
      price: '10 AED',
      name: 'CocaCola ',
      image: 'https://i.postimg.cc/3rZSfpr8/coke.jpg',
    ),
    DrinksModelClass(
      description: 'Can be served normal or cold.',
      price: '12 AED',
      name: 'Still Water  ',
      image: 'https://i.postimg.cc/KcQfD2Q4/sparkling.jpg',
    ),
    DrinksModelClass(
      description: 'Can be served normal or cold.',
      price: '12 AED',
      name: ' Sparkling Water ',
      image: 'https://i.postimg.cc/KcQfD2Q4/sparkling.jpg',
    ),
  ];
}
