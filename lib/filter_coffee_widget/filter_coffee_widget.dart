import 'package:flutter/material.dart';
import 'package:so_qr_menu/models/filtered_coffe_detail/filtered_coffee_detail.dart';
import 'package:so_qr_menu/models/filtered_coffee_model/filtered_coffee_model.dart';

class FilteredCoffeetbuilder extends StatelessWidget {
  FilteredCoffeetbuilder({
    super.key,
    required this.updatedindex,
    required this.height,
    required this.width,
  });

  final int updatedindex;
  final double height;
  final double width;
  final ScrollController scrollcontrollerv = ScrollController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: formKey,
      controller: scrollcontrollerv,
      cacheExtent: 9999,
      itemCount: FilteredCoffeesModelClass.filteredCoffeesModelClass.length,
      // shrinkWrap: true,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(9.0),
          child: InkWell(
            onTap: () async {
              showDialog(
                  context: context,
                  builder: (_) {
                    return Dialog(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35)),
                        height: height * 0.25,
                        width: width * 0.15,
                        child: ListView.builder(
                          itemCount: FilteredCoffeesDetailModelClass
                              .filteredCoffeesDetailModelClass.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: height * 0.05,
                                width: width,
                                // color: Colors.amber,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: width * 0.02,
                                    right: width * 0.02,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${FilteredCoffeesDetailModelClass.filteredCoffeesDetailModelClass[index].bean}',
                                        maxLines: 3,
                                        style: TextStyle(
                                          fontSize: width * 0.025,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '${FilteredCoffeesDetailModelClass.filteredCoffeesDetailModelClass[index].price}',
                                        style: TextStyle(
                                          color: const Color(0xffDCC7B6),
                                          fontSize: width * 0.028,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  });
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => FilteredCoffeesDetail(),
              //   ),
              // );
            },
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: height * 0.2,
                width: width * 0.3,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.02,
                    right: width * 0.02,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${FilteredCoffeesModelClass.filteredCoffeesModelClass[index].name}',
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: width * 0.025,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     top: height * 0.02,
                      //   ),
                      //   child: Text(
                      //     '${FilteredCoffeesModelClass.FilteredCoffeesModelClass[index].price}',
                      //     style: TextStyle(
                      //       color: const Color(0xffDCC7B6),
                      //       fontSize: width * 0.028,
                      //       fontWeight: FontWeight.w600,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
