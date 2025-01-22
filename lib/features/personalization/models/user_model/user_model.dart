import 'package:assessment_task/core/models/geo_point/geo_point.dart';

/// Model class representing user data.
class UserModel{
  final String nameFirst;
  final int age;
  final DateTime registeredDate;
  final String state;
  final String city;
  final String pictureThumbnail;
  final String phoneNumber;
  final GeoPoint locationGeoPoint;

  /// Constructor for [UserModel]
  const UserModel({
    required this.nameFirst,
    required this.age,
    required this.registeredDate,
    required this.state,
    required this.city,
    required this.pictureThumbnail,
    required this.phoneNumber,
    required this.locationGeoPoint,
  });

  /// Function to create an empty [UserModel].
  static UserModel empty() => UserModel(nameFirst: '', age: 0, registeredDate: DateTime.now(), state: '', city: '', pictureThumbnail: '', phoneNumber: '', locationGeoPoint: GeoPoint.empty());

  /// Convert model to [JSON] structure for storing data in firestore
  Map<String, dynamic> toJson() => {
    'first_name': nameFirst,
    'age': age,
    'registered_date': registeredDate.toIso8601String(),
    'state': state,
    'city': city,
    'picture_thumbnail': pictureThumbnail,
    'phone_number': phoneNumber,
    'geo_point': locationGeoPoint,
  };

  /// Factory method to create a [UserModel] from a [JSON] format.
  factory UserModel.fromJson(Map<String, dynamic> data) => UserModel(
    nameFirst: data["name"]["first"]  ?? "",
    age: data["dob"]["age"] ?? 0,
    registeredDate: DateTime.tryParse((data["registered"]["date"]) ?? "") ?? DateTime.now(),
    state: data["location"]["state"] ?? "",
    city: data["location"]["city"] ?? "",
    pictureThumbnail: data["picture"]["thumbnail"] ?? "",
    phoneNumber: data["phone"] ?? "",
    locationGeoPoint: GeoPoint(
      latitude: double.tryParse((data["location"]["coordinates"]["latitude"])) ?? 0.0,
      longitude: double.tryParse((data["location"]["coordinates"]["longitude"])) ?? 0.0,
    ),
  );

}
