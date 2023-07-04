import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:so_qr_menu/models/get_category_model/get_category_model.dart';
import 'package:so_qr_menu/models/get_product_model/get_product_model.dart';
import 'package:so_qr_menu/static.dart';
import 'package:so_qr_menu/static_valeus.dart';
// import 'package:dio/dio.dart' as deo;
import 'package:http/http.dart' as http;

/// More examples see https://github.com/cfug/dio/blob/main/example
void main() async {
  // final dio = Dio();
  // final response = await dio.get('https://pub.dev');
  // print(response.data);
}

class CategoryController extends GetxController {
  static CategoryController get to => Get.find();
  // var picker = ImagePicker();
  File? addImage;
  bool isImageSelected = false;
  http.Response? response;
  var image;
  String? fileName;

  //////////getCategory///////////

  List<DataList> getCatagoriesListData = [];

  Future<List<DataList>> getCatagoriesList() async {
    getCatagoriesListData.clear();
    response = await http.get(
      Uri.parse(StaticValues.getAllCategoryUrl),
      headers: {
        "Content-type": " application/json-patch+json",
        "Authorization": " Bearer ${StaticData.token}"
      },
    );
    print("response ${response!.statusCode}");
    if (response!.statusCode == 200) {
      print('object');
      var catData = GetCatagoryListModel.fromJson(jsonDecode(response!.body));
      for (var u in catData.data!) {
        getCatagoriesListData.add(u);
      }
      print("getCatagoriesListData $getCatagoriesListData");
    }
    return getCatagoriesListData;
  }

  //////////getbranches///////////

  List<Data> getProductListData = [];

  Future<List<Data>> getProductList() async {
    getProductListData.clear();
    response = await http.get(
      Uri.parse(StaticValues.getproducteUrl),
      headers: {
        "Content-type": " application/json-patch+json",
        "Authorization": " Bearer ${StaticData.token}"
      },
    );
    print("response ${response!.statusCode}");
    print(response!.body);
    if (response!.statusCode == 200) {
      var catData = GetProductModel.fromJson(jsonDecode(response!.body));
      for (var u in catData.data!) {
        getProductListData.add(u);
      }
      print("getCatagoriesListData $getProductListData");
    }
    return getProductListData;
  }
}
