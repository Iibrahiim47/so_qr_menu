class SaladsModelClass {
  String? name;
  String? image;
  String? description;
  String? price;

  SaladsModelClass({this.name, this.image, this.description, this.price});
  static List<SaladsModelClass> saladsModelClass = [
    SaladsModelClass(
      description:
          'Mix lettuce , mango , orange , quinoa, Bread julienne,honeyvinaigrette sauce & raspberry purée .',
      price: '37 AED',
      name: 'Summer mango salad - سلطة المانجو الصيفية',
      image: 'https://i.postimg.cc/L6TqhQwF/mango-salad.jpg',
    ),
    SaladsModelClass(
      description:
          '3 types off quinoa boiled iceberg frisse lettuce loloroso lettuce cherry tomato red & yellow red pearl wholnuts crush dates chop with raspberry purre ',
      price: '37 AED',
      name: 'Quinoa salad  - سلطة الكنوا',
      image: 'https://i.postimg.cc/yxFd81mY/quinoa-salad.jpg',
    ),
    SaladsModelClass(
      description:
          'Traditional ‘most favourite local munch’ falafel accompanied with bunch of mesclun mix, tossed in tahini based home made dressing',
      price: '35 AED',
      name: 'Falafel Salad - سلطة الفلافل',
      image: 'https://i.postimg.cc/c1513KqH/Falafil-salad.jpg',
    ),
    SaladsModelClass(
      description:
          'Bunch of mix mesclune, grilled corn, olives, tossed in our home made lime based dressing, topped with sprinkle of feta cheese and microgreens',
      price: '37 AED',
      name: 'Grilled Corn Salad - سلطة الذرة المشوية',
      image: 'https://i.postimg.cc/bN7z6Kwf/Grill-corn-salad.jpg',
    ),
    SaladsModelClass(
      description:
          'Local roca leaves with refreshing local produce watermelon tossed in our home made dressing , topped with feta cheese',
      price: '26 AED',
      name: 'Ragi Salad - سلطة البطيخ الاحمر',
      image: 'https://i.postimg.cc/YqGrzpkx/Ragi-salad.jpg',
    ),
  ];
}
