// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class MenuModelClass {
  String? name;
  String? arabicName;
  String? image;
  String? description;
  String? price;
  String? menuid;
  String? type;
  Timestamp? dateTime;
  String? addedby;
  MenuModelClass({
    this.name,
    this.arabicName,
    this.image,
    this.description,
    this.price,
    this.menuid,
    this.dateTime,
    this.type,
    this.addedby,
  });

  MenuModelClass copyWith({
    String? name,
    String? arabicName,
    String? image,
    String? description,
    String? price,
    String? menuid,
    String? branch,
    String? type,
    Timestamp? dateTime,
    String? addedby,
  }) {
    return MenuModelClass(
      name: name ?? this.name,
      arabicName: arabicName ?? this.arabicName,
      image: image ?? this.image,
      description: description ?? this.description,
      price: price ?? this.price,
      menuid: menuid ?? this.menuid,
      dateTime: dateTime ?? this.dateTime,
      type: type ?? this.type,
      addedby: addedby ?? this.addedby,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'arabicName': arabicName,
      'image': image,
      'description': description,
      'price': price,
      'menuid': menuid,
      'dateTime': dateTime,
      'type': type,
      'addedby': addedby,
    };
  }

  factory MenuModelClass.fromMap(Map<String, dynamic> map) {
    return MenuModelClass(
      name: map['name'] != null ? map['name'] as String : null,
      arabicName:
          map['arabicName'] != null ? map['arabicName'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      price: map['price'] != null ? map['price'] as String : null,
      menuid: map['menuid'] != null ? map['menuid'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      dateTime: map['dateTime'] != null ? map['dateTime'] as Timestamp : null,
      addedby: map['addedby'] != null ? map['addedby'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuModelClass.fromJson(String source) =>
      MenuModelClass.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MenuModelClass(name: $name, arabicName: $arabicName, image: $image, description: $description, price: $price, menuid: $menuid, type: $type,  dateTime: $dateTime, addedby: $addedby)';
  }

  @override
  bool operator ==(covariant MenuModelClass other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.arabicName == arabicName &&
        other.image == image &&
        other.description == description &&
        other.price == price &&
        other.menuid == menuid &&
        other.dateTime == dateTime &&
        other.type == type &&
        other.addedby == addedby;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        arabicName.hashCode ^
        image.hashCode ^
        description.hashCode ^
        price.hashCode ^
        menuid.hashCode ^
        dateTime.hashCode ^
        type.hashCode ^
        addedby.hashCode;
  }
}
