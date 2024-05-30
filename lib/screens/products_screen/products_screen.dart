// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_qr_menu/controller/get_category_controller/get_category_controller.dart';
import 'package:so_qr_menu/screens/detail_page/detail_page.dart';
import 'package:so_qr_menu/theme/admin_theme.dart';
import 'package:so_qr_menu/utils/static_data.dart';

import '../products_screen/products_screen.dart';

class ProductsScreen extends StatefulWidget {
  int? index;
  ProductsScreen({super.key, this.index});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
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
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: SoMenuTheme.bgcolor,
      body: GetBuilder<CategoryController>(
        initState: (state) {},
        builder: (obj) {
          return SizedBox(
            height: height,
            width: width,
            // color: const Color(0xffE64692),
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: AssetImage(
            //       'images/homebg.jpg',
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
                            color: SoMenuTheme.primarycolor,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.08,
                              decoration: BoxDecoration(
                                // color: const Color(0xff9BAD87),
                                color: SoMenuTheme.primarycolor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: SoMenuTheme.bgcolor,
                                size: width * 0.05,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.07,
                        width: width,
                        child: Center(
                          child: Text(
                            obj.selectedCatName,
                            style: TextStyle(
                              color: SoMenuTheme.primarycolor,
                              fontSize: width * 0.05,
                            ),
                          ),
                        ),
                      ),
                      obj.getProductListData.isEmpty
                          ? const Center(child: CircularProgressIndicator())
                          : Column(
                              children: List.generate(
                                  obj.getProductListData.length, (index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                    top: height * 0.02,
                                  ),
                                  child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: InkWell(
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
                                      child: Container(
                                        height: height * 0.2,
                                        width: width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: SoMenuTheme.bgcolor,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
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
                                                        CircularProgressIndicator(
                                                      color: SoMenuTheme
                                                          .primarycolor,
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
                                            Expanded(
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                  topRight: Radius.circular(15),
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
                                                                left: width *
                                                                    0.02,
                                                                top: height *
                                                                    0.01),
                                                        child: Text(
                                                          '${obj.getProductListData[index].araName}  ${obj.getProductListData[index].engName}',
                                                          style: TextStyle(
                                                            color: SoMenuTheme
                                                                .primarycolor,
                                                            fontSize:
                                                                width * 0.025,
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                                                EdgeInsets.only(
                                                              left:
                                                                  width * 0.02,
                                                              right:
                                                                  width * 0.02,
                                                            ),
                                                            child: Text(
                                                              maxLines: 3,
                                                              '${obj.getProductListData[index].description} ',
                                                              style: TextStyle(
                                                                color: SoMenuTheme
                                                                    .primarycolor,
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
                                                                left: width *
                                                                    0.02,
                                                                top: height *
                                                                    0.01),
                                                        child: Text(
                                                          '${obj.getProductListData[index].price} AED',
                                                          style: TextStyle(
                                                            color: SoMenuTheme
                                                                .primarycolor,
                                                            fontSize:
                                                                width * 0.028,
                                                            fontWeight:
                                                                FontWeight.w600,
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
