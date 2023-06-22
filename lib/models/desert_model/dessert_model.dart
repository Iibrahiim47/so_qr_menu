class DessertModelClass {
  String? name;
  String? image;
  String? description;
  String? price;

  DessertModelClass({this.name, this.image, this.description, this.price});
  static List<DessertModelClass> dessertModelClass = [
    DessertModelClass(
      price: '39 AED',
      description:
          'is basically a syrupy semolina “cake,” with a prominent coconut flavore serve along with our creamy coconut sauce',
      name: 'basbusa - البسبوسة ',
      image: 'https://i.postimg.cc/G2sS7L4y/basbosa.jpg',
    ),
    DessertModelClass(
      price: '36 AED',
      description:
          'New York style cheesecake served with your choices of sauces, Nutella, Lotus, dulce de leche, pistachio',
      name: 'Dark Chocolate Cheese Cake - تشيز كيك الشوكولاتة الداكنة',
      image: 'https://i.postimg.cc/7ZnpgcCV/dark-chocolate-cheese-cake.jpg',
    ),
    DessertModelClass(
        price: '36 AED',
        description:
            'A healthy bowl of acai puree topped with strawberry, banana, and peanut butter to satisfy your sweet craving yet healthy',
        name: 'Acai Bowl - طبق الاساي',
        image: 'https://i.postimg.cc/L8pcgRs5/acai-bowl.jpg'),
    DessertModelClass(
        price: '36 AED',
        description:
            'A reflection of childhood memory, Glucose Biscuit, into a silky smooth pudding with glucose sauce',
        name: 'Glucose Pudding Cake - كعكة الجلوكوز باللبن',
        image: 'https://i.postimg.cc/LXnwF8xC/glucose-pudding1.jpg'),
    DessertModelClass(
        price: '36 AED',
        description:
            'New York style cheesecake served with your choices of sauces, Nutella, Lotus, dulce de leche, pistachio',
        name: 'Lotus Cheese Cake - تشيز كيك لوتس',
        image: 'https://i.postimg.cc/nLVNTkBt/lotus-cheese-cake.jpg'),
    DessertModelClass(
        price: '36 AED',
        description:
            'New York style cheesecake served with your choices of sauces, Nutella, Lotus, dulce de leche, pistachio',
        name: 'Nutella Cheese Cake - تشيز كيك نوتيلا',
        image: 'https://i.postimg.cc/3wLVqvF0/lutella-cheese-cake.jpg'),
    DessertModelClass(
      price: '39 AED',
      description:
          'Vanilla milk cake, layered with vanilla ice cream and dulce de leche sauce, sprinkled with crusted brownies',
      name: 'Take It Off ',
      image: 'https://i.postimg.cc/NfhVZYmD/take-it-off.jpg',
    ),
    DessertModelClass(
      price: '39 AED',
      description:
          'The date cake dipped and served with toffee sauce, topped with a scoop of vanilla ice cream',
      name: 'Ff Pudding ',
      image: 'https://i.postimg.cc/FHYLctnt/ffpudding.jpg',
    ),
    DessertModelClass(
      description:
          'super creamy and smooth manggo cheesecake with our own crust ,topped with fresh manggo and serving with our refreshing manggo and passion syrup',
      price: '39 AED',
      name: 'Mango Cheese Cake',
      image: 'https://i.postimg.cc/SN2ZBRXR/slice.jpg',
    ),
    DessertModelClass(
      description:
          'umm ali is traditional egyptian bread cook with creamy milk and sprinkle with lots of nots and coconut',
      price: '39 AED',
      name: 'Umali cake dinein',
      image: 'https://i.postimg.cc/GmBV82Fk/image00011.jpg',
    ),
  ];
}
