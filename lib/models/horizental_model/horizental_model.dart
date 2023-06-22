class MobHorizentalMenuModel {
  String? name;
  String? image;

  MobHorizentalMenuModel({this.name, this.image});
  static List<MobHorizentalMenuModel> mobHorizentalMenuModel = [
    MobHorizentalMenuModel(
        name: 'Breakfast - الفطور ',
        image: 'https://i.postimg.cc/FskXc7p9/falafel-egg.jpg'),
    MobHorizentalMenuModel(
        name: 'Lunch/Dinner - الغداء والعشاء',
        image: 'https://i.postimg.cc/L5YQqQfm/mushkan-rice1.jpg'),
    // MobHorizentalMenuModel(
    //     name: 'Dinner', image: 'images/dinner/badanjan fettah1.jpeg'),
    MobHorizentalMenuModel(
        name: 'Desserts - الحلويات ',
        image: 'https://i.postimg.cc/3wLVqvF0/lutella-cheese-cake.jpg'),
    MobHorizentalMenuModel(
      name: 'Salad - السلطات ',
      image: 'https://i.postimg.cc/YqGrzpkx/Ragi-salad.jpg',
    ),
    MobHorizentalMenuModel(
      name: 'Drinks - المشروبات ',
      image: 'https://i.postimg.cc/3NrBQSrK/green-tea.jpg',
    ),
    MobHorizentalMenuModel(
      name: 'Cold Coffee - قهوة باردة ',
      image: 'https://i.postimg.cc/J46TMLBS/coldcoffee.jpg',
    ),
    MobHorizentalMenuModel(
      name: 'Hot Coffee - قهوة ساخنة ',
      image: 'https://i.postimg.cc/7hBNH3bS/hotcoffee2.jpg',
    ),
    MobHorizentalMenuModel(
      name: 'Filtered Coffee - قهوة مصفاة',
      image: 'https://i.postimg.cc/N0Tb62Pw/filteredcoffee.jpg',
    ),
  ];
}
