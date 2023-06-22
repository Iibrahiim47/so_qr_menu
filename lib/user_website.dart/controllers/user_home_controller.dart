import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:so_qr_menu/models/menu_category_model.dart';
import 'package:so_qr_menu/models/menu_model.dart';

class UserHomeController extends GetxController {
  static UserHomeController get to => Get.find();
  List<MenuModelClass> allMenueList = [];
  List<MenueCategoryModel> allCategoryList = [];
  String selectedCategory = "";
  String selectedType = "";

  Future<List<MenueCategoryModel>> getMyCategoryListMethod() async {
    allCategoryList.clear();
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await firestore
        .collection("category")
        .orderBy("dateTime", descending: false)
        .get();

    for (var doc in querySnapshot.docs) {
      allCategoryList
          .add(MenueCategoryModel.fromMap(doc.data() as Map<String, dynamic>));
    }
    getMyMenueListMethod(
        allCategoryList[0].type!,
        "${allCategoryList[0].englishName} - ${allCategoryList[0].arabicName}",
        allCategoryList[0].catId!);
    update();

    return allCategoryList;
  }

  Future<List<MenuModelClass>> getMyMenueListMethod(
      String type, String catName, String catId) async {
    allMenueList.clear();
    selectedCategory = catName;
    selectedType = type;
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await firestore
        .collection("menues")
        .where("catId", isEqualTo: catId)
        .get();

    for (var doc in querySnapshot.docs) {
      allMenueList
          .add(MenuModelClass.fromMap(doc.data() as Map<String, dynamic>));
    }

    update();

    return allMenueList;
  }
}
