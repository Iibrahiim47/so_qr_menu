// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class MenueCategoryModel {
  String? catImage;
  String? englishName;
  String? arabicName;
  String? catId;
  String? adminId;
  String? type;
  Timestamp? dateTime;
  MenueCategoryModel(
      {this.catImage,
      this.englishName,
      this.arabicName,
      this.catId,
      this.adminId,
      this.dateTime,
      this.type});

  MenueCategoryModel copyWith({
    String? catImage,
    String? englishName,
    String? arabicName,
    String? catId,
    String? adminId,
    Timestamp? dateTime,
    String? type,
  }) {
    return MenueCategoryModel(
      catImage: catImage ?? this.catImage,
      englishName: englishName ?? this.englishName,
      arabicName: arabicName ?? this.arabicName,
      catId: catId ?? this.catId,
      adminId: adminId ?? this.adminId,
      dateTime: dateTime ?? this.dateTime,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catImage': catImage,
      'englishName': englishName,
      'arabicName': arabicName,
      'catId': catId,
      'adminId': adminId,
      'dateTime': dateTime,
      'type': type,
    };
  }

  factory MenueCategoryModel.fromMap(Map<String, dynamic> map) {
    return MenueCategoryModel(
      catImage: map['catImage'] != null ? map['catImage'] as String : null,
      englishName:
          map['englishName'] != null ? map['englishName'] as String : null,
      arabicName:
          map['arabicName'] != null ? map['arabicName'] as String : null,
      catId: map['catId'] != null ? map['catId'] as String : null,
      adminId: map['adminId'] != null ? map['adminId'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      dateTime: map['dateTime'] != null ? map['dateTime'] as Timestamp : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MenueCategoryModel.fromJson(String source) =>
      MenueCategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MenueCategoryModel(catImage: $catImage, englishName: $englishName, arabicName: $arabicName, catId: $catId, type: $type, adminId: $adminId, dateTime: $dateTime)';
  }

  @override
  bool operator ==(covariant MenueCategoryModel other) {
    if (identical(this, other)) return true;

    return other.catImage == catImage &&
        other.englishName == englishName &&
        other.arabicName == arabicName &&
        other.catId == catId &&
        other.adminId == adminId &&
        other.type == type &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    return catImage.hashCode ^
        englishName.hashCode ^
        arabicName.hashCode ^
        catId.hashCode ^
        adminId.hashCode ^
        type.hashCode ^
        dateTime.hashCode;
  }
}
