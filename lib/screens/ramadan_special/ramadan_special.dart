import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:so_qr_menu/models/ramadan_special_model/ramadan_special_model.dart';
import 'package:so_qr_menu/screens/ramadan_special/ramadan_special_detail.dart';

class RamadanSpecial extends StatefulWidget {
  const RamadanSpecial({super.key});

  @override
  State<RamadanSpecial> createState() => _RamadanSpecialState();
}

class _RamadanSpecialState extends State<RamadanSpecial> {
  ScrollController scrollcontroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'images/homebg.jpg',
                ),
              ),
            ),
          ),
          SizedBox(
            height: height,
            width: width,
            child: ListView.builder(
              controller: scrollcontroller,
              itemCount: RamadanSpecialModel.ramadanSpecialModel.length,
              cacheExtent: 9999,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.02,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RamadanSpecialDetailPage(
                            image:
                                '${RamadanSpecialModel.ramadanSpecialModel[index].image}',
                            // description:
                            //     '${BreakfastModelClass.breakfastModelClass[index].description}',
                            name:
                                '${RamadanSpecialModel.ramadanSpecialModel[index].name}',
                            // price:
                            //     '${BreakfastModelClass.breakfastModelClass[index].price}',
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        height: height * 0.4,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: CachedNetworkImage(
                            progressIndicatorBuilder: (context, url, progress) {
                              return Center(
                                child: CircularProgressIndicator(
                                  value: progress.progress,
                                ),
                              );
                            },
                            imageUrl:
                                '${RamadanSpecialModel.ramadanSpecialModel[index].image}',
                            fit: BoxFit.cover,
                          ),
                        ),
                        // child: Row(
                        //   children: [
                        //     GestureDetector(
                        //       onTap: () {
                        //         // Navigator.push(
                        //         //   context,
                        //         //   MaterialPageRoute(
                        //         //     builder: (context) => DetailPage(
                        //         //       image:
                        //         //           '${BreakfastModelClass.breakfastModelClass[index].image}',
                        //         //       description:
                        //         //           '${BreakfastModelClass.breakfastModelClass[index].description}',
                        //         //       name:
                        //         //           '${BreakfastModelClass.breakfastModelClass[index].name}',
                        //         //       price:
                        //         //           '${BreakfastModelClass.breakfastModelClass[index].price}',
                        //         //     ),
                        //         //   ),
                        //         // );
                        //       },
                        //       child: Container(
                        //         height: height,
                        //         width: width * 0.3,
                        //         decoration: const BoxDecoration(
                        //           // image: DecorationImage(
                        //           //   fit: BoxFit.cover,
                        //           //   image: AssetImage(
                        //           //     '${BreakfastModelClass.breakfastModelClass[index].image}',
                        //           //   ),
                        //           // ),
                        //           borderRadius: BorderRadius.only(
                        //               topLeft: Radius.circular(15),
                        //               bottomLeft: Radius.circular(15)),
                        //         ),
                        //         child: ClipRRect(
                        //           borderRadius: BorderRadius.circular(16),
                        //           child: CachedNetworkImage(
                        //             progressIndicatorBuilder:
                        //                 (context, url, progress) {
                        //               return Center(
                        //                 child: CircularProgressIndicator(
                        //                   value: progress.progress,
                        //                 ),
                        //               );
                        //             },
                        //             imageUrl:
                        //                 '${RamadanSpecialModel.ramadanSpecialModel[index].image}',
                        //             fit: BoxFit.cover,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Expanded(
                        //       child: Container(
                        //         decoration: const BoxDecoration(
                        //             borderRadius: BorderRadius.only(
                        //           topRight: Radius.circular(15),
                        //           bottomRight: Radius.circular(15),
                        //         )),
                        //         height: height,
                        //         width: width,
                        //         child: Column(
                        //           children: [
                        //             SizedBox(
                        //               height: height * 0.06,
                        //               width: width,
                        //               child: Padding(
                        //                 padding: EdgeInsets.only(
                        //                     left: width * 0.02,
                        //                     top: height * 0.01),
                        //                 child: Text(
                        //                   '${RamadanSpecialModel.ramadanSpecialModel[index].name}',
                        //                   style: TextStyle(
                        //                     fontSize: width * 0.025,
                        //                     fontWeight: FontWeight.bold,
                        //                   ),
                        //                   maxLines: 2,
                        //                 ),
                        //               ),
                        //             ),
                        //             // Expanded(
                        //             //   child: SizedBox(
                        //             //     height: height,
                        //             //     width: width,
                        //             //     child: Padding(
                        //             //         padding: EdgeInsets.only(
                        //             //           left: width * 0.02,
                        //             //           right: width * 0.02,
                        //             //         ),
                        //             //         child: Text(
                        //             //           maxLines: 3,
                        //             //           '${BreakfastModelClass.breakfastModelClass[index].description}',
                        //             //           style: TextStyle(
                        //             //             fontSize: width * 0.025,
                        //             //           ),
                        //             //         )),
                        //             //   ),
                        //             // ),
                        //             // SizedBox(
                        //             //   height: height * 0.04,
                        //             //   width: width,
                        //             //   child: Padding(
                        //             //     padding: EdgeInsets.only(
                        //             //         left: width * 0.02, top: height * 0.01),
                        //             //     child: Text(
                        //             //       '${BreakfastModelClass.breakfastModelClass[index].price}',
                        //             //       style: TextStyle(
                        //             //         color: const Color(0xffDCC7B6),
                        //             //         fontSize: width * 0.028,
                        //             //         fontWeight: FontWeight.w600,
                        //             //       ),
                        //             //     ),
                        //             //   ),
                        //             // ),
                        //           ],
                        //         ),
                        //       ),
                        //     )
                        //   ],
                        // ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: height * 0.08,
            width: width,
            child: Padding(
              padding: EdgeInsets.only(
                left: width * 0.03,
                right: width * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Card(
                      color: const Color(0xff9BAD87),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: height * 0.06,
                        width: width * 0.08,
                        decoration: BoxDecoration(
                          color: const Color(0xff9BAD87),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: width * 0.05,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    // color: Colors.amber,
                    height: height,
                    width: width * 0.2,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
