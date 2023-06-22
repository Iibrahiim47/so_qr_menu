class MobHotAndColdCoffeesDetailModelClass {
  String? bean;
  String? price;

  MobHotAndColdCoffeesDetailModelClass({this.price, this.bean});
  static List<MobHotAndColdCoffeesDetailModelClass>
      mobHotAndColdCoffeesDetailModelClass = [
    MobHotAndColdCoffeesDetailModelClass(bean: 'Signature Beans', price: '45'),
    MobHotAndColdCoffeesDetailModelClass(
      bean: 'Brazil Fazenda',
      price: '35',
    ),
    MobHotAndColdCoffeesDetailModelClass(
      bean: 'Columbia',
      price: '40',
    ),
    // FilteredCoffeesDetailModelClass(
    //   bean: 'Ethiopia ',
    //   price: '35',
    // ),
  ];
}
