import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class AddReviewModel {
  String? name;
  String? email;
  String? phoneNumber;
  String? aboutus;
  bool? firstTime;
  double? staffRating;
  double? serviceRating;
  String? improve;
  String? branchId;
  String? city;
  AddReviewModel({
    this.name,
    this.email,
    this.phoneNumber,
    this.aboutus,
    this.firstTime,
    this.staffRating,
    this.serviceRating,
    this.improve,
    this.branchId,
    this.city,
  });

  AddReviewModel copyWith({
    String? name,
    String? email,
    String? phoneNumber,
    String? aboutus,
    bool? firstTime,
    double? staffRating,
    double? serviceRating,
    String? improve,
    String? branchId,
    String? city,
  }) {
    return AddReviewModel(
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      aboutus: aboutus ?? this.aboutus,
      firstTime: firstTime ?? this.firstTime,
      staffRating: staffRating ?? this.staffRating,
      serviceRating: serviceRating ?? this.serviceRating,
      improve: improve ?? this.improve,
      branchId: branchId ?? this.branchId,
      city: city ?? this.city,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'aboutus': aboutus,
      'firstTime': firstTime,
      'staffRating': staffRating,
      'serviceRating': serviceRating,
      'improve': improve,
      'branchId': branchId,
      'city': city,
    };
  }

  factory AddReviewModel.fromMap(Map<String, dynamic> map) {
    return AddReviewModel(
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phoneNumber:
          map['phoneNumber'] != null ? map['phoneNumber'] as String : null,
      aboutus: map['aboutus'] != null ? map['aboutus'] as String : null,
      firstTime: map['firstTime'] != null ? map['firstTime'] as bool : null,
      staffRating:
          map['staffRating'] != null ? map['staffRating'] as double : null,
      serviceRating:
          map['serviceRating'] != null ? map['serviceRating'] as double : null,
      improve: map['improve'] != null ? map['improve'] as String : null,
      branchId: map['branchId'] != null ? map['branchId'] as String : null,
      city: map['city'] != null ? map['city'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddReviewModel.fromJson(String source) =>
      AddReviewModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AddReviewModel(name: $name, email: $email, phoneNumber: $phoneNumber, aboutus: $aboutus, firstTime: $firstTime, staffRating: $staffRating, serviceRating: $serviceRating, improve: $improve, branchId: $branchId, city: $city)';
  }

  @override
  bool operator ==(covariant AddReviewModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.email == email &&
        other.phoneNumber == phoneNumber &&
        other.aboutus == aboutus &&
        other.firstTime == firstTime &&
        other.staffRating == staffRating &&
        other.serviceRating == serviceRating &&
        other.improve == improve &&
        other.branchId == branchId &&
        other.city == city;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        phoneNumber.hashCode ^
        aboutus.hashCode ^
        firstTime.hashCode ^
        staffRating.hashCode ^
        serviceRating.hashCode ^
        improve.hashCode ^
        branchId.hashCode ^
        city.hashCode;
  }
}
