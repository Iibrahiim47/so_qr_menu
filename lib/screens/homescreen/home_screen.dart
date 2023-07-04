// ignore_for_file: prefer_typing_uninitialized_variables

<<<<<<< HEAD
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:so_qr_menu/models/horizental_model/horizental_model.dart';
import 'package:so_qr_menu/screens/detail_page/detail_page.dart';
=======
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_qr_menu/controller/get_category_controller/get_category_controller.dart';
>>>>>>> 2bd4e3a (changes)

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollcontrollerh = ScrollController();
  final ScrollController scrollcontrollerv = ScrollController();
  CarouselController buttonCarouselController = CarouselController();
  final formKey = GlobalKey<FormState>();
  int updatedindex = 0;
  bool like = false;
<<<<<<< HEAD
  int currentindex = 0;
=======
  // var defaultTargetPlatform;
  // bool isLoading = false;
  // bool isMobile() {
  //   if (defaultTargetPlatform == TargetPlatform.iOS ||
  //       defaultTargetPlatform == TargetPlatform.android) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
  @override
  void initState() {
    CategoryController.to.getCatagoriesList();
    super.initState();
  }
>>>>>>> 2bd4e3a (changes)

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
<<<<<<< HEAD
      body:
          //  GetBuilder<UserHomeController>(initState: (state) {
          //   UserHomeController.to.getMyCategoryListMethod();
          // }, builder: (obj) {
          //   return
          Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'images/homebg.jpg',
=======
      body: GetBuilder<CategoryController>(initState: (state) {
        // UserHomeController.to.getMyCategoryListMethod();
      }, builder: (obj) {
        return Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'images/homebg.jpg',
              ),
>>>>>>> 2bd4e3a (changes)
            ),
          ),
        ),
        child: Stack(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: Padding(
                padding: EdgeInsets.only(
                  left: width * 0.03,
                  right: width * 0.03,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
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
<<<<<<< HEAD
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      height: height * 0.25,
                      width: width * 0.95,
                      child: CarouselSlider.builder(
                        // itemCount: 5,
                        carouselController: buttonCarouselController,
                        itemCount: MobHorizentalMenuModel
                            .mobHorizentalMenuModel.length,
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.8,
                          aspectRatio: 2.0,
                          initialPage: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentindex = index;
                            });
                          },
                        ),
                        itemBuilder: (context, index, realIndex) {
                          return Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        '${MobHorizentalMenuModel.mobHorizentalMenuModel[index].image}'),
                                  ),
                                ),
                                height: height,
                                width: width * 0.95,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      height: height * 0.05,
                      width: width,
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: height,
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: MobHorizentalMenuModel
                              .mobHorizentalMenuModel
                              .asMap()
                              .entries
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    elevation: 10,
                                    shape: currentindex == e.key
                                        ? RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )
                                        : RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(80),
                                          ),
                                    child: Container(
                                      decoration: currentindex == e.key
                                          ? BoxDecoration(
                                              color: const Color(0xff9BAD87),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            )
                                          : const BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                      height: height * 0.015,
                                      width: currentindex == e.key
                                          ? width * 0.05
                                          : width * 0.03,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      height: height * 0.22,
                      width: width,
                      child:
                          //  obj.allCategoryList.isEmpty
                          //     ? const Center(child: Text("No Category Found"))
                          //     :
                          ListView.builder(
                        scrollDirection: Axis.horizontal,
                        // itemCount: obj.allCategoryList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: width * 0.01),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // obj.getMyMenueListMethod(
                                    //     obj.allCategoryList[index]
                                    //         .type!,
                                    //     "${obj.allCategoryList[index].englishName} - ${obj.allCategoryList[index].arabicName}",
                                    //     obj.allCategoryList[index]
                                    //         .catId!);
                                  },
                                  child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        // image: DecorationImage(
                                        //   fit: BoxFit.cover,
                                        //   image: AssetImage(
                                        //     '${MobHorizentalMenuModel.mobHorizentalMenuModel[index].image}',
                                        //   ),
                                        // ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      height: height * 0.15,
                                      width: width * 0.3,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        // child: CachedNetworkImage(
                                        //   progressIndicatorBuilder:
                                        //       (context, url, progress) {
                                        //     return Center(
                                        //       child:
                                        //           CircularProgressIndicator(
                                        //         value:
                                        //             progress.progress,
                                        //       ),
                                        //     );
                                        //   },
                                        //   imageUrl:
                                        //       '${obj.allCategoryList[index].catImage}',
                                        //   fit: BoxFit.cover,
                                        // ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Name',
                                  // '${obj.allCategoryList[index].englishName} - ${obj.allCategoryList[index].arabicName}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    // SizedBox(
                    //   height: height * 0.02,
                    // ),
                    Expanded(
                      child: SizedBox(
                        height: height,
                        width: width,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.07,
                              width: width,
                              // color: Colors.amber,
                              child: Center(
                                child: Text(
                                  'Selected Text',
                                  // obj.selectedCategory,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.05,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                  height: height,
                                  width: width,
                                  child:
                                      //  obj.selectedType == "FCoffee"
                                      //     ? GridView.builder(
                                      //         controller: scrollcontrollerv,

                                      //         itemCount: obj.allMenueList.length,
                                      //         // shrinkWrap: true,
                                      //         gridDelegate:
                                      //             const SliverGridDelegateWithFixedCrossAxisCount(
                                      //                 crossAxisCount: 3),
                                      //         itemBuilder: (context, index) {
                                      //           return Padding(
                                      //             padding:
                                      //                 const EdgeInsets.all(9.0),
                                      //             child: InkWell(
                                      //               onTap: () async {
                                      //                 // showDialog(
                                      //                 //     context: context,
                                      //                 //     builder: (_) {
                                      //                 //       return Dialog(
                                      //                 //         child: Container(
                                      //                 //           decoration: BoxDecoration(
                                      //                 //               color: Colors
                                      //                 //                   .white,
                                      //                 //               borderRadius:
                                      //                 //                   BorderRadius
                                      //                 //                       .circular(
                                      //                 //                           35)),
                                      //                 //           height:
                                      //                 //               height * 0.25,
                                      //                 //           width:
                                      //                 //               width * 0.15,
                                      //                 //           child: ListView
                                      //                 //               .builder(
                                      //                 //             itemCount: obj
                                      //                 //                 .allMenueList
                                      //                 //                 .length,
                                      //                 //             itemBuilder:
                                      //                 //                 (context,
                                      //                 //                     index) {
                                      //                 //               return Padding(
                                      //                 //                 padding:
                                      //                 //                     const EdgeInsets.all(
                                      //                 //                         8.0),
                                      //                 //                 child:
                                      //                 //                     SizedBox(
                                      //                 //                   height:
                                      //                 //                       height *
                                      //                 //                           0.05,
                                      //                 //                   width:
                                      //                 //                       width,
                                      //                 //                   // color: Colors.amber,
                                      //                 //                   child:
                                      //                 //                       Padding(
                                      //                 //                     padding:
                                      //                 //                         EdgeInsets.only(
                                      //                 //                       left: width *
                                      //                 //                           0.02,
                                      //                 //                       right:
                                      //                 //                           width * 0.02,
                                      //                 //                     ),
                                      //                 //                     child:
                                      //                 //                         Row(
                                      //                 //                       mainAxisAlignment:
                                      //                 //                           MainAxisAlignment.spaceBetween,
                                      //                 //                       children: [
                                      //                 //                         Text(
                                      //                 //                           '${FilteredCoffeesDetailModelClass.filteredCoffeesDetailModelClass[index].bean}',
                                      //                 //                           maxLines: 3,
                                      //                 //                           style: TextStyle(
                                      //                 //                             fontSize: width * 0.025,
                                      //                 //                             fontWeight: FontWeight.bold,
                                      //                 //                           ),
                                      //                 //                         ),
                                      //                 //                         Text(
                                      //                 //                           '${FilteredCoffeesDetailModelClass.filteredCoffeesDetailModelClass[index].price}',
                                      //                 //                           style: TextStyle(
                                      //                 //                             color: const Color(0xffDCC7B6),
                                      //                 //                             fontSize: width * 0.028,
                                      //                 //                             fontWeight: FontWeight.w600,
                                      //                 //                           ),
                                      //                 //                         ),
                                      //                 //                       ],
                                      //                 //                     ),
                                      //                 //                   ),
                                      //                 //                 ),
                                      //                 //               );
                                      //                 //             },
                                      //                 //           ),
                                      //                 //         ),
                                      //                 //       );
                                      //                 //     });
                                      //                 // Navigator.push(
                                      //                 //   context,
                                      //                 //   MaterialPageRoute(
                                      //                 //     builder: (context) => FilteredCoffeesDetail(),
                                      //                 //   ),
                                      //                 // );
                                      //               },
                                      //               child: Card(
                                      //                 elevation: 10,
                                      //                 shape:
                                      //                     RoundedRectangleBorder(
                                      //                         borderRadius:
                                      //                             BorderRadius
                                      //                                 .circular(
                                      //                                     15)),
                                      //                 child: Container(
                                      //                   decoration: BoxDecoration(
                                      //                     color: Colors.white,
                                      //                     borderRadius:
                                      //                         BorderRadius
                                      //                             .circular(15),
                                      //                   ),
                                      //                   height: height * 0.2,
                                      //                   width: width * 0.3,
                                      //                   child: Padding(
                                      //                     padding:
                                      //                         EdgeInsets.only(
                                      //                       left: width * 0.02,
                                      //                       right: width * 0.02,
                                      //                     ),
                                      //                     child: Column(
                                      //                       mainAxisAlignment:
                                      //                           MainAxisAlignment
                                      //                               .center,
                                      //                       crossAxisAlignment:
                                      //                           CrossAxisAlignment
                                      //                               .center,
                                      //                       children: [
                                      //                         Text(
                                      //                           obj
                                      //                               .allMenueList[
                                      //                                   index]
                                      //                               .name!,
                                      //                           maxLines: 3,
                                      //                           style: TextStyle(
                                      //                             fontSize:
                                      //                                 width *
                                      //                                     0.025,
                                      //                             fontWeight:
                                      //                                 FontWeight
                                      //                                     .bold,
                                      //                           ),
                                      //                         ),
                                      //                       ],
                                      //                     ),
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //           );
                                      //         },
                                      //       )
                                      //     : obj.selectedType == "Coffee"
                                      //         ? GridView.builder(
                                      //             itemCount:
                                      //                 obj.allMenueList.length,
                                      //             controller: scrollcontrollerv,
                                      //             gridDelegate:
                                      //                 const SliverGridDelegateWithFixedCrossAxisCount(
                                      //                     crossAxisCount: 3),
                                      //             itemBuilder: (context, index) {
                                      //               return Padding(
                                      //                 padding:
                                      //                     const EdgeInsets.all(
                                      //                         9.0),
                                      //                 child: InkWell(
                                      //                   onTap: () {},
                                      //                   child: Card(
                                      //                     elevation: 10,
                                      //                     shape: RoundedRectangleBorder(
                                      //                         borderRadius:
                                      //                             BorderRadius
                                      //                                 .circular(
                                      //                                     15)),
                                      //                     child: Container(
                                      //                       decoration:
                                      //                           BoxDecoration(
                                      //                         color: Colors.white,
                                      //                         borderRadius:
                                      //                             BorderRadius
                                      //                                 .circular(
                                      //                                     15),
                                      //                       ),
                                      //                       height: height * 0.15,
                                      //                       width: width * 0.3,
                                      //                       child: Padding(
                                      //                         padding:
                                      //                             EdgeInsets.only(
                                      //                           left:
                                      //                               width * 0.02,
                                      //                           right:
                                      //                               width * 0.02,
                                      //                         ),
                                      //                         child: Column(
                                      //                           mainAxisAlignment:
                                      //                               MainAxisAlignment
                                      //                                   .center,
                                      //                           crossAxisAlignment:
                                      //                               CrossAxisAlignment
                                      //                                   .center,
                                      //                           children: [
                                      //                             Text(
                                      //                               obj
                                      //                                   .allMenueList[
                                      //                                       index]
                                      //                                   .name!,
                                      //                               maxLines: 3,
                                      //                               style:
                                      //                                   TextStyle(
                                      //                                 fontSize:
                                      //                                     width *
                                      //                                         0.025,
                                      //                                 fontWeight:
                                      //                                     FontWeight
                                      //                                         .bold,
                                      //                               ),
                                      //                             ),
                                      //                             Padding(
                                      //                               padding:
                                      //                                   EdgeInsets
                                      //                                       .only(
                                      //                                 top: height *
                                      //                                     0.02,
                                      //                               ),
                                      //                               child: Text(
                                      //                                 '${obj.allMenueList[index].price}',
                                      //                                 style:
                                      //                                     TextStyle(
                                      //                                   color: const Color(
                                      //                                       0xffDCC7B6),
                                      //                                   fontSize:
                                      //                                       width *
                                      //                                           0.028,
                                      //                                   fontWeight:
                                      //                                       FontWeight
                                      //                                           .w600,
                                      //                                 ),
                                      //                               ),
                                      //                             ),
                                      //                           ],
                                      //                         ),
                                      //                       ),
                                      //                     ),
                                      //                   ),
                                      //                 ),
                                      //               );
                                      //             },
                                      //           )
                                      //         :
                                      ListView.builder(
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    key: formKey,
                                    // itemCount: obj.allMenueList.length,
                                    controller: scrollcontrollerv,

                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                          top: height * 0.02,
                                        ),
                                        child: Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Container(
                                            height: height * 0.2,
                                            width: width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                            child: Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const DetailPage(
                                                                // model:
                                                                //     obj.allMenueList[
                                                                //         index],
                                                                ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: height,
                                                    width: width * 0.3,
                                                    decoration:
                                                        const BoxDecoration(
                                                      // image: DecorationImage(
                                                      //   fit: BoxFit.cover,
                                                      //   image: AssetImage(
                                                      //     '${BreakfastModelClass.breakfastModelClass[index].image}',
                                                      //   ),
                                                      // ),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(15),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      15)),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                      // child:
                                                      //     CachedNetworkImage(
                                                      //   progressIndicatorBuilder:
                                                      //       (context,
                                                      //           url,
                                                      //           progress) {
                                                      //     return Center(
                                                      //       child:
                                                      //           CircularProgressIndicator(
                                                      //         value:
                                                      //             progress.progress,
                                                      //       ),
                                                      //     );
                                                      //   },
                                                      //   imageUrl:
                                                      //       '${obj.allMenueList[index].image}',
                                                      //   fit: BoxFit
                                                      //       .cover,
                                                      // ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                      topRight:
                                                          Radius.circular(15),
                                                      bottomRight:
                                                          Radius.circular(15),
                                                    )),
                                                    height: height,
                                                    width: width,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.06,
                                                          width: width,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left:
                                                                        width *
                                                                            0.02,
                                                                    top: height *
                                                                        0.01),
                                                            child: Text(
                                                              'Name',
                                                              // '${obj.allMenueList[index].name}  ${obj.allMenueList[index].arabicName}',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.025,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
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
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: width *
                                                                      0.02,
                                                                  right: width *
                                                                      0.02,
                                                                ),
                                                                child: Text(
                                                                  maxLines: 3,
                                                                  'Description',
                                                                  // '${obj.allMenueList[index].description} ',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        width *
                                                                            0.025,
                                                                  ),
                                                                )),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: height * 0.04,
                                                          width: width,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left:
                                                                        width *
                                                                            0.02,
                                                                    top: height *
                                                                        0.01),
                                                            child: Text(
                                                              'Price',
                                                              // '${obj.allMenueList[index].price} AED',
                                                              style: TextStyle(
                                                                color: const Color(
                                                                    0xffDCC7B6),
                                                                fontSize:
                                                                    width *
                                                                        0.028,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
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
                                    },
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
=======
                      SizedBox(
                        height: height * 0.01,
                      ),

                      //

                      SizedBox(
                        height: height * 0.02,
                      ),
                      // Expanded(
                      //   child: SizedBox(
                      //     height: height,
                      //     width: width,
                      //     child: Column(
                      //       children: [
                      //         SizedBox(
                      //           height: height * 0.1,
                      //           width: width,
                      //           child: Center(
                      //               child: Text(
                      //             obj.selectedCategory,
                      //             style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: width * 0.05,
                      //             ),
                      //           )),
                      //         ),
                      //         Expanded(
                      //           child: SizedBox(
                      //               height: height,
                      //               width: width,
                      //               child: obj.selectedType == "FCoffee"
                      //                   ? GridView.builder(
                      //                       controller: scrollcontrollerv,

                      //                       itemCount: obj.allMenueList.length,
                      //                       // shrinkWrap: true,
                      //                       gridDelegate:
                      //                           const SliverGridDelegateWithFixedCrossAxisCount(
                      //                               crossAxisCount: 3),
                      //                       itemBuilder: (context, index) {
                      //                         return Padding(
                      //                           padding:
                      //                               const EdgeInsets.all(9.0),
                      //                           child: InkWell(
                      //                             onTap: () async {
                      //                               // showDialog(
                      //                               //     context: context,
                      //                               //     builder: (_) {
                      //                               //       return Dialog(
                      //                               //         child: Container(
                      //                               //           decoration: BoxDecoration(
                      //                               //               color: Colors
                      //                               //                   .white,
                      //                               //               borderRadius:
                      //                               //                   BorderRadius
                      //                               //                       .circular(
                      //                               //                           35)),
                      //                               //           height:
                      //                               //               height * 0.25,
                      //                               //           width:
                      //                               //               width * 0.15,
                      //                               //           child: ListView
                      //                               //               .builder(
                      //                               //             itemCount: obj
                      //                               //                 .allMenueList
                      //                               //                 .length,
                      //                               //             itemBuilder:
                      //                               //                 (context,
                      //                               //                     index) {
                      //                               //               return Padding(
                      //                               //                 padding:
                      //                               //                     const EdgeInsets.all(
                      //                               //                         8.0),
                      //                               //                 child:
                      //                               //                     SizedBox(
                      //                               //                   height:
                      //                               //                       height *
                      //                               //                           0.05,
                      //                               //                   width:
                      //                               //                       width,
                      //                               //                   // color: Colors.amber,
                      //                               //                   child:
                      //                               //                       Padding(
                      //                               //                     padding:
                      //                               //                         EdgeInsets.only(
                      //                               //                       left: width *
                      //                               //                           0.02,
                      //                               //                       right:
                      //                               //                           width * 0.02,
                      //                               //                     ),
                      //                               //                     child:
                      //                               //                         Row(
                      //                               //                       mainAxisAlignment:
                      //                               //                           MainAxisAlignment.spaceBetween,
                      //                               //                       children: [
                      //                               //                         Text(
                      //                               //                           '${FilteredCoffeesDetailModelClass.filteredCoffeesDetailModelClass[index].bean}',
                      //                               //                           maxLines: 3,
                      //                               //                           style: TextStyle(
                      //                               //                             fontSize: width * 0.025,
                      //                               //                             fontWeight: FontWeight.bold,
                      //                               //                           ),
                      //                               //                         ),
                      //                               //                         Text(
                      //                               //                           '${FilteredCoffeesDetailModelClass.filteredCoffeesDetailModelClass[index].price}',
                      //                               //                           style: TextStyle(
                      //                               //                             color: const Color(0xffDCC7B6),
                      //                               //                             fontSize: width * 0.028,
                      //                               //                             fontWeight: FontWeight.w600,
                      //                               //                           ),
                      //                               //                         ),
                      //                               //                       ],
                      //                               //                     ),
                      //                               //                   ),
                      //                               //                 ),
                      //                               //               );
                      //                               //             },
                      //                               //           ),
                      //                               //         ),
                      //                               //       );
                      //                               //     });
                      //                               // Navigator.push(
                      //                               //   context,
                      //                               //   MaterialPageRoute(
                      //                               //     builder: (context) => FilteredCoffeesDetail(),
                      //                               //   ),
                      //                               // );
                      //                             },
                      //                             child: Card(
                      //                               elevation: 10,
                      //                               shape:
                      //                                   RoundedRectangleBorder(
                      //                                       borderRadius:
                      //                                           BorderRadius
                      //                                               .circular(
                      //                                                   15)),
                      //                               child: Container(
                      //                                 decoration: BoxDecoration(
                      //                                   color: Colors.white,
                      //                                   borderRadius:
                      //                                       BorderRadius
                      //                                           .circular(15),
                      //                                 ),
                      //                                 height: height * 0.2,
                      //                                 width: width * 0.3,
                      //                                 child: Padding(
                      //                                   padding:
                      //                                       EdgeInsets.only(
                      //                                     left: width * 0.02,
                      //                                     right: width * 0.02,
                      //                                   ),
                      //                                   child: Column(
                      //                                     mainAxisAlignment:
                      //                                         MainAxisAlignment
                      //                                             .center,
                      //                                     crossAxisAlignment:
                      //                                         CrossAxisAlignment
                      //                                             .center,
                      //                                     children: [
                      //                                       Text(
                      //                                         obj
                      //                                             .allMenueList[
                      //                                                 index]
                      //                                             .name!,
                      //                                         maxLines: 3,
                      //                                         style: TextStyle(
                      //                                           fontSize:
                      //                                               width *
                      //                                                   0.025,
                      //                                           fontWeight:
                      //                                               FontWeight
                      //                                                   .bold,
                      //                                         ),
                      //                                       ),
                      //                                     ],
                      //                                   ),
                      //                                 ),
                      //                               ),
                      //                             ),
                      //                           ),
                      //                         );
                      //                       },
                      //                     )
                      //                   : obj.selectedType == "Coffee"
                      //                       ? GridView.builder(
                      //                           itemCount:
                      //                               obj.allMenueList.length,
                      //                           controller: scrollcontrollerv,
                      //                           gridDelegate:
                      //                               const SliverGridDelegateWithFixedCrossAxisCount(
                      //                                   crossAxisCount: 3),
                      //                           itemBuilder: (context, index) {
                      //                             return Padding(
                      //                               padding:
                      //                                   const EdgeInsets.all(
                      //                                       9.0),
                      //                               child: InkWell(
                      //                                 onTap: () {},
                      //                                 child: Card(
                      //                                   elevation: 10,
                      //                                   shape: RoundedRectangleBorder(
                      //                                       borderRadius:
                      //                                           BorderRadius
                      //                                               .circular(
                      //                                                   15)),
                      //                                   child: Container(
                      //                                     decoration:
                      //                                         BoxDecoration(
                      //                                       color: Colors.white,
                      //                                       borderRadius:
                      //                                           BorderRadius
                      //                                               .circular(
                      //                                                   15),
                      //                                     ),
                      //                                     height: height * 0.15,
                      //                                     width: width * 0.3,
                      //                                     child: Padding(
                      //                                       padding:
                      //                                           EdgeInsets.only(
                      //                                         left:
                      //                                             width * 0.02,
                      //                                         right:
                      //                                             width * 0.02,
                      //                                       ),
                      //                                       child: Column(
                      //                                         mainAxisAlignment:
                      //                                             MainAxisAlignment
                      //                                                 .center,
                      //                                         crossAxisAlignment:
                      //                                             CrossAxisAlignment
                      //                                                 .center,
                      //                                         children: [
                      //                                           Text(
                      //                                             obj
                      //                                                 .allMenueList[
                      //                                                     index]
                      //                                                 .name!,
                      //                                             maxLines: 3,
                      //                                             style:
                      //                                                 TextStyle(
                      //                                               fontSize:
                      //                                                   width *
                      //                                                       0.025,
                      //                                               fontWeight:
                      //                                                   FontWeight
                      //                                                       .bold,
                      //                                             ),
                      //                                           ),
                      //                                           Padding(
                      //                                             padding:
                      //                                                 EdgeInsets
                      //                                                     .only(
                      //                                               top: height *
                      //                                                   0.02,
                      //                                             ),
                      //                                             child: Text(
                      //                                               '${obj.allMenueList[index].price}',
                      //                                               style:
                      //                                                   TextStyle(
                      //                                                 color: const Color(
                      //                                                     0xffDCC7B6),
                      //                                                 fontSize:
                      //                                                     width *
                      //                                                         0.028,
                      //                                                 fontWeight:
                      //                                                     FontWeight
                      //                                                         .w600,
                      //                                               ),
                      //                                             ),
                      //                                           ),
                      //                                         ],
                      //                                       ),
                      //                                     ),
                      //                                   ),
                      //                                 ),
                      //                               ),
                      //                             );
                      //                           },
                      //                         )
                      //                       : ListView.builder(
                      //                           // physics: AlwaysScrollableScrollPhysics(),
                      //                           key: formKey,
                      //                           itemCount:
                      //                               obj.allMenueList.length,
                      //                           controller: scrollcontrollerv,

                      //                           itemBuilder: (context, index) {
                      //                             return Padding(
                      //                               padding: EdgeInsets.only(
                      //                                 top: height * 0.02,
                      //                               ),
                      //                               child: Card(
                      //                                 elevation: 10,
                      //                                 shape:
                      //                                     RoundedRectangleBorder(
                      //                                   borderRadius:
                      //                                       BorderRadius
                      //                                           .circular(15),
                      //                                 ),
                      //                                 child: Container(
                      //                                   height: height * 0.2,
                      //                                   width: width,
                      //                                   decoration:
                      //                                       BoxDecoration(
                      //                                     borderRadius:
                      //                                         BorderRadius
                      //                                             .circular(15),
                      //                                     color: Colors.white,
                      //                                   ),
                      //                                   child: Row(
                      //                                     children: [
                      //                                       GestureDetector(
                      //                                         onTap: () {
                      //                                           Navigator.push(
                      //                                             context,
                      //                                             MaterialPageRoute(
                      //                                               builder:
                      //                                                   (context) =>
                      //                                                       DetailPage(
                      //                                                 model: obj
                      //                                                         .allMenueList[
                      //                                                     index],
                      //                                               ),
                      //                                             ),
                      //                                           );
                      //                                         },
                      //                                         child: Container(
                      //                                           height: height,
                      //                                           width:
                      //                                               width * 0.3,
                      //                                           decoration:
                      //                                               const BoxDecoration(
                      //                                             // image: DecorationImage(
                      //                                             //   fit: BoxFit.cover,
                      //                                             //   image: AssetImage(
                      //                                             //     '${BreakfastModelClass.breakfastModelClass[index].image}',
                      //                                             //   ),
                      //                                             // ),
                      //                                             borderRadius: BorderRadius.only(
                      //                                                 topLeft: Radius
                      //                                                     .circular(
                      //                                                         15),
                      //                                                 bottomLeft:
                      //                                                     Radius.circular(
                      //                                                         15)),
                      //                                           ),
                      //                                           child:
                      //                                               ClipRRect(
                      //                                             borderRadius:
                      //                                                 BorderRadius
                      //                                                     .circular(
                      //                                                         16),
                      //                                             child:
                      //                                                 CachedNetworkImage(
                      //                                               progressIndicatorBuilder:
                      //                                                   (context,
                      //                                                       url,
                      //                                                       progress) {
                      //                                                 return Center(
                      //                                                   child:
                      //                                                       CircularProgressIndicator(
                      //                                                     value:
                      //                                                         progress.progress,
                      //                                                   ),
                      //                                                 );
                      //                                               },
                      //                                               imageUrl:
                      //                                                   '${obj.allMenueList[index].image}',
                      //                                               fit: BoxFit
                      //                                                   .cover,
                      //                                             ),
                      //                                           ),
                      //                                         ),
                      //                                       ),
                      //                                       Expanded(
                      //                                         child: Container(
                      //                                           decoration:
                      //                                               const BoxDecoration(
                      //                                                   borderRadius:
                      //                                                       BorderRadius.only(
                      //                                             topRight: Radius
                      //                                                 .circular(
                      //                                                     15),
                      //                                             bottomRight: Radius
                      //                                                 .circular(
                      //                                                     15),
                      //                                           )),
                      //                                           height: height,
                      //                                           width: width,
                      //                                           child: Column(
                      //                                             children: [
                      //                                               SizedBox(
                      //                                                 height:
                      //                                                     height *
                      //                                                         0.06,
                      //                                                 width:
                      //                                                     width,
                      //                                                 child:
                      //                                                     Padding(
                      //                                                   padding: EdgeInsets.only(
                      //                                                       left: width *
                      //                                                           0.02,
                      //                                                       top:
                      //                                                           height * 0.01),
                      //                                                   child:
                      //                                                       Text(
                      //                                                     '${obj.allMenueList[index].name}  ${obj.allMenueList[index].arabicName}',
                      //                                                     style:
                      //                                                         TextStyle(
                      //                                                       fontSize:
                      //                                                           width * 0.025,
                      //                                                       fontWeight:
                      //                                                           FontWeight.bold,
                      //                                                     ),
                      //                                                     maxLines:
                      //                                                         2,
                      //                                                   ),
                      //                                                 ),
                      //                                               ),
                      //                                               Expanded(
                      //                                                 child:
                      //                                                     SizedBox(
                      //                                                   height:
                      //                                                       height,
                      //                                                   width:
                      //                                                       width,
                      //                                                   child: Padding(
                      //                                                       padding: EdgeInsets.only(
                      //                                                         left: width * 0.02,
                      //                                                         right: width * 0.02,
                      //                                                       ),
                      //                                                       child: Text(
                      //                                                         maxLines: 3,
                      //                                                         '${obj.allMenueList[index].description} ',
                      //                                                         style: TextStyle(
                      //                                                           fontSize: width * 0.025,
                      //                                                         ),
                      //                                                       )),
                      //                                                 ),
                      //                                               ),
                      //                                               SizedBox(
                      //                                                 height:
                      //                                                     height *
                      //                                                         0.04,
                      //                                                 width:
                      //                                                     width,
                      //                                                 child:
                      //                                                     Padding(
                      //                                                   padding: EdgeInsets.only(
                      //                                                       left: width *
                      //                                                           0.02,
                      //                                                       top:
                      //                                                           height * 0.01),
                      //                                                   child:
                      //                                                       Text(
                      //                                                     '${obj.allMenueList[index].price} AED',
                      //                                                     style:
                      //                                                         TextStyle(
                      //                                                       color:
                      //                                                           const Color(0xffDCC7B6),
                      //                                                       fontSize:
                      //                                                           width * 0.028,
                      //                                                       fontWeight:
                      //                                                           FontWeight.w600,
                      //                                                     ),
                      //                                                   ),
                      //                                                 ),
                      //                                               ),
                      //                                             ],
                      //                                           ),
                      //                                         ),
                      //                                       )
                      //                                     ],
                      //                                   ),
                      //                                 ),
                      //                               ),
                      //                             );
                      //                           },
                      //                         )),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
>>>>>>> 2bd4e3a (changes)
                ),
              ),
            ),
          ],
        ),
      ),
      // }),
    );
  }
}
