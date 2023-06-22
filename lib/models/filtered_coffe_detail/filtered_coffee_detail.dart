class FilteredCoffeesDetailModelClass {
  String? bean;
  String? price;

  FilteredCoffeesDetailModelClass({this.price, this.bean});
  static List<FilteredCoffeesDetailModelClass> filteredCoffeesDetailModelClass =
      [
    FilteredCoffeesDetailModelClass(bean: 'Signature Beans', price: '45'),
    FilteredCoffeesDetailModelClass(
      bean: 'Brazil Fazenda',
      price: '35',
    ),
    FilteredCoffeesDetailModelClass(
      bean: 'Columbia',
      price: '40',
    ),
    // FilteredCoffeesDetailModelClass(
    //   bean: 'Ethiopia ',
    //   price: '35',
    // ),
  ];
}
