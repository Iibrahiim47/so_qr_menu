import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:so_qr_menu/models/get_category_model/get_category_model.dart';
import 'package:so_qr_menu/models/get_product_model/get_product_model.dart';
import 'package:so_qr_menu/static_valeus.dart';
import 'package:http/http.dart' as http;
import 'package:so_qr_menu/models/get_slider_model.dart' as slider;

class CategoryController extends GetxController {
  static CategoryController get to => Get.find();
  File? addImage;
  bool isImageSelected = false;
  http.Response? response;
  var image;
  String? fileName;
  String selectedCatName = "Category Name";

  //////////getCategory///////////
  generateCatName(String engName, arName) {
    selectedCatName = "$arName - $engName";
    update();
  }

  List<DataList> getCatagoriesListData = [];

  Future<List<DataList>> getCatagoriesList() async {
    getCatagoriesListData.clear();

    response = await http.get(
      Uri.parse(StaticValues.getAllCategoryUrl),
      headers: {
        "Content-type": " application/json-patch+json",
      },
    );
    if (response!.statusCode == 200) {
      var catData = GetCatagoryListModel.fromJson(jsonDecode(response!.body));
      for (var u in catData.data!) {
        getCatagoriesListData.add(u);
      }
      generateCatName(
          getCatagoriesListData[0].engName!, getCatagoriesListData[0].araName);
      getProductList(getCatagoriesListData[0].categoryId!);
    }
    update();
    return getCatagoriesListData;
  }

  //////////getproducts///////////

  List<Data> getProductListData = [];

  Future<List<Data>> getProductList(int catId) async {
    getProductListData.clear();
    response = await http.get(
      Uri.parse("${StaticValues.getproducteUrl}$catId"),
      headers: {
        "Content-type": " application/json-patch+json",
      },
    );
    if (response!.statusCode == 200) {
      var productData = GetProductModel.fromJson(jsonDecode(response!.body));
      for (var u in productData.data!) {
        getProductListData.add(u);
      }
    }
    update();
    return getProductListData;
  }

  ///////////getsliderimagemethod////////
  List<slider.Data> getSliderListData = [];

  Future<List<slider.Data>> getSliderList() async {
    print(getCatagoriesListData.length);
    getSliderListData.clear();
    response = await http.get(
      Uri.parse(StaticValues.getSliderUrl),
      headers: {
        "Content-type": " application/json-patch+json",
      },
    );

    if (response!.statusCode == 200) {
      var catData = slider.GetSliderModel.fromJson(jsonDecode(response!.body));
      for (var u in catData.data!) {
        getSliderListData.add(u);
      }
    }
    return getSliderListData;
  }
}
