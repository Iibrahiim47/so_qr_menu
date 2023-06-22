class ColdCoffeesModelClass {
  String? name;
  String? pic;
  String? description;

  String? price;

  ColdCoffeesModelClass({this.name, this.pic, this.description, this.price});
  static List<ColdCoffeesModelClass> coldCoffeesModelClass = [
    ColdCoffeesModelClass(
      description: 'give reviews please',
      pic: 'https://i.postimg.cc/Gt9Xs7WX/Ice-chocolate.jpg',
      price: '25 AED',
      name: 'Iced Chocolate - شوكولاتة مثلجة',
    ),
    ColdCoffeesModelClass(
      description: 'give reviews please',
      pic: 'https://i.postimg.cc/3N6njj7Y/Ice-latte.jpg',
      price: '24 AED',
      name: 'Iced Latte -                 '
          ' مثلج لاتيه',
    ),
    ColdCoffeesModelClass(
      description: 'give reviews please',
      pic: 'https://i.postimg.cc/bN7msR3R/ice-spanish-latte.jpg',
      price: '26 AED',
      name: 'Iced Spanish Latte -   ايس سبانش لاتيه',
    ),
    ColdCoffeesModelClass(
      description: 'give reviews please',
      pic: 'https://i.postimg.cc/sg5wSZLC/Ice-pistachio.jpg',
      price: '34 AED',
      name: 'Iced Pistachio -   فستق مثلج',
    ),
    ColdCoffeesModelClass(
      description: 'give reviews please',
      pic: 'https://i.postimg.cc/nz3drbPs/Affogato.jpg',
      price: '26 AED',
      name: 'Affogato -                               أفوجاتو',
    ),
    ColdCoffeesModelClass(
      description: 'give reviews please',
      pic: 'https://i.postimg.cc/26kcC82R/Ice-americano.jpg',
      price: '18 AED',
      name: 'Iced Americano - أمريكانو مثلج',
    ),
    ColdCoffeesModelClass(
      description: 'give reviews please',
      pic: 'https://i.postimg.cc/hPzCDYbj/Ice-mocha.jpg',
      price: '27 AED',
      name: 'Iced Mocha -                              موكا مثلجة',
    ),
    ColdCoffeesModelClass(
      description: 'give reviews please',
      pic: 'https://i.postimg.cc/661jNKZg/Ice-matcha.jpg',
      price: '25 AED',
      name: 'Iced Matcha -                           ماتشا مثلج',
    ),
  ];
}
