class HotCoffeeModel {
  String? name;
  String? pic;
  String? price;
  String? description;

  HotCoffeeModel({this.name, this.pic, this.description, this.price});
  static List<HotCoffeeModel> hotCoffeeModel = [
    HotCoffeeModel(
      description: 'give reviews please',
      pic: 'images/hot coffee/Flatwhite.jpeg',
      price: '25 AED',
      name: 'Flat White -                               فلات وايت',
    ),
    HotCoffeeModel(
      description: 'give reviews please',
      pic: 'images/hot coffee/Espresso.jpeg',
      price: '20 AED',
      name: 'Espresso -                               إسبرسو',
    ),
    HotCoffeeModel(
      description: 'give reviews please',
      pic: 'images/hot coffee/picollo.jpeg',
      price: '23 AED',
      name: ' Piccolo -                               بيكولو',
    ),
    HotCoffeeModel(
      description: 'give reviews please',
      pic: 'images/hot coffee/Cappucino.jpeg',
      price: '23 AED',
      name: 'Cappuccino - كابتشينو ',
    ),
    HotCoffeeModel(
      description: 'give reviews please',
      pic: 'images/hot coffee/Americano.jpeg',
      price: '20 AED',
      name: 'Americano -                               أمريكانو',
    ),
    HotCoffeeModel(
      description: 'give reviews please',
      pic: 'images/hot coffee/hot spanish latte.jpeg',
      price: '26 AED',
      name: 'Spanish Latte - سبانش لاتيه',
    ),
    HotCoffeeModel(
      description: 'give reviews please',
      pic: 'images/hot coffee/Hot mocha.jpeg',
      price: '26 AED',
      name: 'Mocha -                               موكا ',
    ),
    HotCoffeeModel(
      description: 'give reviews please',
      pic: 'images/hot coffee/Cortado.jpeg',
      price: '23 AED',
      name: 'Cortado -                               كورتادو',
    ),
    HotCoffeeModel(
      description: 'give reviews please',
      pic: 'images/hot coffee/Hot chocolate.jpeg',
      price: '25 AED',
      name: ' Hot Chocolate - شكولاته ساخنة ',
    ),
    HotCoffeeModel(
      description: 'give reviews please',
      pic: 'images/hot coffee/latte.jpeg',
      price: '24 AED',
      name: 'Hot Latte -                               لاتيه ساخن ',
    ),
    HotCoffeeModel(
      description: 'give reviews please',
      pic: 'images/hot coffee/Hot matcha.jpeg',
      price: '25 AED',
      name: 'Hot matcha -                               ماتشا الساخنة ',
    ),
  ];
}
