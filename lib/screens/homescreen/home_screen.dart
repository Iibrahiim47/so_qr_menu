// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_qr_menu/controller/get_category_controller/get_category_controller.dart';
import 'package:so_qr_menu/screens/detail_page/detail_page.dart';
import 'package:so_qr_menu/utils/static_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  ScrollController scrollcontrollerh = ScrollController();
  final ScrollController scrollcontrollerv = ScrollController();
  CarouselController buttonCarouselController = CarouselController();
  final formKey = GlobalKey<FormState>();
  int updatedindex = 0;
  bool like = false;
  int currentindex = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // CategoryController.to.generateCatName();

    print("${CategoryController.to.getCatagoriesListData}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GetBuilder<CategoryController>(
        initState: (state) {
          CategoryController.to.getSliderList();
        },
        builder: (obj) {
          return Container(
            height: height,
            width: width,
            color: const Color(0xffE64692),
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: AssetImage(
            //       'images/background.jpeg',
            //     ),
            //   ),
            // ),
            child: Stack(children: [
              SizedBox(
                height: height,
                width: width,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.03,
                    right: width * 0.03,
                  ),
                  child: ListView(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Card(
                            // color: const Color(0xff9BAD87),
                            color: const Color(0xffE64692),
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.08,
                              decoration: BoxDecoration(
                                // color: const Color(0xff9BAD87),
                                color: const Color(0xffE64692),
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
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      // SizedBox(
                      //   height: height * 0.25,
                      //   width: width * 0.95,
                      //   child: CarouselSlider.builder(
                      //     // itemCount: 5,
                      //     carouselController: buttonCarouselController,
                      //     itemCount: obj.getSliderListData.length,
                      //     options: CarouselOptions(
                      //       autoPlay: true,
                      //       enlargeCenterPage: true,
                      //       viewportFraction: 0.8,
                      //       aspectRatio: 2.0,
                      //       initialPage: 1,
                      //       onPageChanged: (index, reason) {
                      //         setState(() {
                      //           currentindex = index;
                      //         });
                      //       },
                      //     ),
                      //     itemBuilder: (context, index, realIndex) {
                      //       return Stack(
                      //         children: [
                      //           obj.getSliderListData.isEmpty
                      //               ? const CircularProgressIndicator()
                      //               : Container(
                      //                   decoration: BoxDecoration(
                      //                     // color: Colors.red,
                      //                     borderRadius:
                      //                         BorderRadius.circular(15),
                      //                     image: DecorationImage(
                      //                       image: NetworkImage(
                      //                         "${StaticValues.imageUrl}${obj.getSliderListData[index].imageUrl!}",
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   height: height,
                      //                   width: width * 0.27,
                      //                   // child: ClipRRect(
                      //                   //   borderRadius:
                      //                   //       BorderRadius.circular(15),
                      //                   //   child: CachedNetworkImage(
                      //                   //     alignment: Alignment.center,
                      //                   //     // fit: BoxFit.fill,
                      //                   //     filterQuality: FilterQuality.medium,
                      //                   //     progressIndicatorBuilder:
                      //                   //         (context, url, progress) {
                      //                   //       return const CircularProgressIndicator(
                      //                   //         color: Color(0xffE64692),
                      //                   //       );
                      //                   //     },
                      //                   //     imageUrl:
                      //                   //         "${StaticValues.imageUrl}${obj.getSliderListData[index].imageUrl!}",
                      //                   //   ),
                      //                   // ),
                      //                 ),
                      //         ],
                      //       );
                      //     },
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: height * 0.01,
                      // ),
                      // SizedBox(
                      //   height: height * 0.02,
                      //   width: width,
                      //   // color: Colors.red,
                      //   child: Padding(
                      //     padding:
                      //         EdgeInsets.symmetric(horizontal: width * 0.33),
                      //     child: ListView.builder(
                      //       scrollDirection: Axis.horizontal,
                      //       itemCount: obj.getSliderListData.length,
                      //       itemBuilder: (context, index) {
                      //         return Padding(
                      //           padding: EdgeInsets.only(
                      //             left: width * 0.02,
                      //           ),
                      //           child: Container(
                      //             decoration: index == currentindex
                      //                 ? BoxDecoration(
                      //                     // color: const Color(0xffDB6439),
                      //                     color: const Color(0xffE64692),
                      //                     borderRadius:
                      //                         BorderRadius.circular(20),
                      //                   )
                      //                 : const BoxDecoration(
                      //                     color: Colors.white,
                      //                     shape: BoxShape.circle),
                      //             height: height * 0.01,
                      //             width: index == currentindex
                      //                 ? width * 0.06
                      //                 : width * 0.03,
                      //           ),
                      //         );
                      //       },
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        height: height * 0.22,
                        width: width,
                        child: obj.getCatagoriesListData.isEmpty
                            ? const Center(child: CircularProgressIndicator())
                            : ListView.builder(
                                addAutomaticKeepAlives: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: obj.getCatagoriesListData.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.01),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            obj.generateCatName(
                                              obj.getCatagoriesListData[index]
                                                  .araName!,
                                              obj.getCatagoriesListData[index]
                                                  .engName,
                                            );
                                            obj.getProductList(obj
                                                .getCatagoriesListData[index]
                                                .categoryId!);
                                            print(obj
                                                .getCatagoriesListData[index]
                                                .categoryId!);
                                          },
                                          child: Card(
                                            elevation: 10,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                // image: DecorationImage(
                                                //   fit: BoxFit.cover,
                                                //   image: NetworkImage(
                                                //     "${StaticValues.imageUrl}${obj.getCatagoriesListData[index].imageUrl!}",
                                                //   ),
                                                // ),
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              height: height * 0.15,
                                              width: width * 0.3,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: CachedNetworkImage(
                                                  placeholder: (context, url) =>
                                                      Container(
                                                    height: height * 0.05,
                                                    width: width * 0.1,
                                                    // color: Colors.amber,
                                                    alignment: Alignment.center,
                                                    child:
                                                        const CircularProgressIndicator(
                                                      color: Color(0xffE64692),
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                  fit: BoxFit.cover,
                                                  filterQuality:
                                                      FilterQuality.medium,
                                                  // progressIndicatorBuilder:
                                                  //     (context, url, progress) {
                                                  //   return const CircularProgressIndicator(
                                                  //     color: Color(0xffE64692),
                                                  //   );
                                                  // },
                                                  imageUrl:
                                                      "${StaticValues.imageUrl}${obj.getCatagoriesListData[index].imageUrl!}",
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                            "${obj.getCatagoriesListData[index].araName} - ${obj.getCatagoriesListData[index].engName}"),
                                        // const Text(
                                        //   'Name',
                                        //   '${obj.getCatagoriesListData[index].engName} - ${obj.getCatagoriesListData[index].araName}',
                                        //   style: TextStyle(
                                        //     fontWeight: FontWeight.w500,
                                        //   ),
                                        // )
                                      ],
                                    ),
                                  );
                                },
                              ),
                      ),
                      // SizedBox(
                      //   height: height * 0.02,
                      // ),
                      SizedBox(
                        height: height * 0.07,
                        width: width,
                        // color: Colors.amber,
                        child: Center(
                          child: Text(
                            obj.selectedCatName,
                            // obj.selectedCategory,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.05,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: List.generate(obj.getProductListData.length,
                            (index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.02,
                            ),
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Container(
                                height: height * 0.2,
                                width: width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => DetailPage(
                                                model: obj
                                                    .getProductListData[index],
                                              ),
                                            ));
                                      },
                                      child: obj.getProductListData.isEmpty
                                          ? const CircularProgressIndicator()
                                          : Container(
                                              height: height,
                                              width: width * 0.3,
                                              decoration: const BoxDecoration(
                                                // image:
                                                //     DecorationImage(
                                                //   fit: BoxFit
                                                //       .cover,
                                                //   image: NetworkImage(
                                                //       "${StaticValues.imageUrl}${obj.getProductListData[index].imageUrl}"
                                                //       // "${StaticValues.imageUrl}${obj.getCatagoriesListData[index].imageUrl!}",
                                                //       ),
                                                // ),
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(15),
                                                    bottomLeft:
                                                        Radius.circular(15)),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: CachedNetworkImage(
                                                  placeholder: (context, url) =>
                                                      Container(
                                                    height: height * 0.05,
                                                    width: width * 0.1,
                                                    // color: Colors.amber,
                                                    alignment: Alignment.center,
                                                    child:
                                                        const CircularProgressIndicator(
                                                      color: Color(0xffE64692),
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                  fit: BoxFit.cover,
                                                  filterQuality:
                                                      FilterQuality.medium,
                                                  // progressIndicatorBuilder:
                                                  //     (context, url,
                                                  //         progress) {
                                                  //   return const CircularProgressIndicator(
                                                  //     color: Color(
                                                  //         0xffE64692),
                                                  //   );
                                                  // },
                                                  imageUrl:
                                                      "${StaticValues.imageUrl}${obj.getProductListData[index].imageUrl}",
                                                ),
                                              ),
                                            ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        )),
                                        height: height,
                                        width: width,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: height * 0.06,
                                              width: width,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.02,
                                                    top: height * 0.01),
                                                child: Text(
                                                  '${obj.getProductListData[index].araName}  ${obj.getProductListData[index].engName}',
                                                  style: TextStyle(
                                                    fontSize: width * 0.025,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  maxLines: 2,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: SizedBox(
                                                height: height,
                                                width: width,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: width * 0.02,
                                                      right: width * 0.02,
                                                    ),
                                                    child: Text(
                                                      maxLines: 3,
                                                      '${obj.getProductListData[index].description} ',
                                                      style: TextStyle(
                                                        fontSize: width * 0.025,
                                                      ),
                                                    )),
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.04,
                                              width: width,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.02,
                                                    top: height * 0.01),
                                                child: Text(
                                                  '${obj.getProductListData[index].price} AED',
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xffDCC7B6),
                                                    fontSize: width * 0.028,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
