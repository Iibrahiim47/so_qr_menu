import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:so_qr_menu/models/add_reviews_model.dart';
import 'package:so_qr_menu/utils/static_data.dart';

class ReviewController extends GetxController {
  static ReviewController get to => Get.find();
  Future<AddReviewModel> addReviewMethiod(AddReviewModel model) async {
    http.Response response =
        await http.post(Uri.parse(StaticValues.addUserFeedBackUrl),
            headers: <String, String>{
              "Content-type": " application/json-patch+json",
            },
            body: jsonEncode(model.toMap()));
    if (response.statusCode == 200) {
      return AddReviewModel.fromMap(jsonDecode(response.body));
    } else {
      throw Exception('Failed To Load Model');
    }
  }
}
