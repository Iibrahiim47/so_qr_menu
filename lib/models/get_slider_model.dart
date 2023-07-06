class GetSliderModel {
  String? status;
  List<Data>? data;
  bool? isAdmin;

  GetSliderModel({this.status, this.data, this.isAdmin});

  GetSliderModel.fromJson(Map<String, dynamic> json) {
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
  int? sliderId;
  String? imageUrl;

  Data({this.sliderId, this.imageUrl});

  Data.fromJson(Map<String, dynamic> json) {
    sliderId = json['sliderId'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sliderId'] = sliderId;
    data['imageUrl'] = imageUrl;
    return data;
  }
}
