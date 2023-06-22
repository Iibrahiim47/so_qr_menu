// import 'package:flutter/material.dart';
// import 'package:so_qr_menu/models/cold_coffees_model/cold_coffees_model.dart';
// import 'package:so_qr_menu/screens/detail_page/detail_page.dart';

// class ColdCoffeetbuilder extends StatelessWidget {
//   ColdCoffeetbuilder({
//     super.key,
//     required this.updatedindex,
//     required this.height,
//     required this.width,
//   });

//   final int updatedindex;
//   final double height;
//   final double width;
//   final ScrollController scrollcontrollerv = ScrollController();
//   final formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       // physics: AlwaysScrollableScrollPhysics(),
//       key: formKey,
//       itemCount: ColdCoffeesModelClass.coldCoffeesModelClass.length,
//       // addAutomaticKeepAlives: true,
//       controller: scrollcontrollerv,
//       // shrinkWrap: true,
//       cacheExtent: 9999,
//       gridDelegate:
//           const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.all(9.0),
//           child: InkWell(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => DetailPage(
//                     description:
//                         '${ColdCoffeesModelClass.coldCoffeesModelClass[index].description}',
//                     image:
//                         '${ColdCoffeesModelClass.coldCoffeesModelClass[index].pic}',
//                     name:
//                         '${ColdCoffeesModelClass.coldCoffeesModelClass[index].name}',
//                     price:
//                         '${ColdCoffeesModelClass.coldCoffeesModelClass[index].price}',
//                   ),
//                 ),
//               );
//             },
//             child: Card(
//               elevation: 10,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15)),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 height: height * 0.15,
//                 width: width * 0.3,
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     left: width * 0.02,
//                     right: width * 0.02,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         '${ColdCoffeesModelClass.coldCoffeesModelClass[index].name}',
//                         maxLines: 3,
//                         style: TextStyle(
//                           fontSize: width * 0.025,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                           top: height * 0.02,
//                         ),
//                         child: Text(
//                           '${ColdCoffeesModelClass.coldCoffeesModelClass[index].price}',
//                           style: TextStyle(
//                             color: const Color(0xffDCC7B6),
//                             fontSize: width * 0.028,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
