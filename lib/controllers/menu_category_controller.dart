// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:so_qr_menu/models/menu_category_model.dart';
import 'package:so_qr_menu/utils/static_data.dart';

class GetMyPostListController extends GetxController {
  static GetMyPostListController get to => Get.find();
  late http.Response response;
  List<MenueCategoryModel> menuCategoryList = [];

  Future<List<MenueCategoryModel>> getAllMenuCategory(
      MenueCategoryModel model) async {
    menuCategoryList.clear();
    response = await http.post(Uri.parse(StaticValues.getAllPostUrl),
        headers: <String, String>{
          'Content-type': 'application/json; charset=utf-8'
        },
        body: jsonEncode(model.toMap()));
    if (response.statusCode == 200) {
      if (response.body != null) {}
    }
    return menuCategoryList;
  }
}
