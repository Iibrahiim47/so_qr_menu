class GetProductModel {
  String? status;
  List<Data>? data;
  bool? isAdmin;

  GetProductModel({this.status, this.data, this.isAdmin});

  GetProductModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    isAdmin = json['isAdmin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['isAdmin'] = isAdmin;
    return data;
  }
}

class Data {
  String? araName;
  String? engName;
  int? productId;
  String? description;
  int? price;
  String? imageUrl;
  String? registrationDateTime;

  Data(
      {this.araName,
      this.engName,
      this.productId,
      this.description,
      this.price,
      this.imageUrl,
      this.registrationDateTime});

  Data.fromJson(Map<String, dynamic> json) {
    araName = json['araName'];
    engName = json['engName'];
    productId = json['productId'];
    description = json['description'];
    price = json['price'];
    imageUrl = json['imageUrl'];
    registrationDateTime = json['registrationDateTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['araName'] = araName;
    data['engName'] = engName;
    data['productId'] = productId;
    data['description'] = description;
    data['price'] = price;
    data['imageUrl'] = imageUrl;
    data['registrationDateTime'] = registrationDateTime;
    return data;
  }
}
