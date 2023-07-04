class GetCatagoryListModel {
  String? status;
  List<DataList>? data;
  bool? isAdmin;

  GetCatagoryListModel({this.status, this.data, this.isAdmin});

  GetCatagoryListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <DataList>[];
      json['data'].forEach((v) {
        data!.add(DataList.fromJson(v));
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

class DataList {
  String? araName;
  String? engName;
  int? categoryId;
  String? imageUrl;
  String? registrationDateTime;

  DataList(
      {this.araName,
      this.engName,
      this.categoryId,
      this.imageUrl,
      this.registrationDateTime});

  DataList.fromJson(Map<String, dynamic> json) {
    araName = json['araName'];
    engName = json['engName'];
    categoryId = json['categoryId'];
    imageUrl = json['imageUrl'];
    registrationDateTime = json['registrationDateTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['araName'] = araName;
    data['engName'] = engName;
    data['categoryId'] = categoryId;
    data['imageUrl'] = imageUrl;
    data['registrationDateTime'] = registrationDateTime;
    return data;
  }
}
