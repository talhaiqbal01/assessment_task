import '../../../domain/entities/user_entity/user_entity.dart';

/// Model class representing user data.
class UserModel extends UserEntity {
  /// Constructor for [UserModel]
  const UserModel({
    String? gender,
    String? title,
    String? firstName,
    String? lastName,
    int? streetNumber,
    String? streetName,
    String? city,
    String? state,
    String? country,
    int? postcode,
    double? latitude,
    double? longitude,
    String? timezoneOffset,
    String? timezoneDescription,
    String? email,
    String? username,
    String? password,
    String? uuid,
    String? phone,
    String? cell,
    String? idName,
    String? largePicture,
    String? mediumPicture,
    String? thumbnailPicture,
    String? nationality,
    DateTime? dateOfBirth,
    int? age,
    DateTime? registrationDate,
    int? registrationAge,
  });

  /// Factory method to create a [UserModel] from a [JSON] format.
  factory UserModel.fromLocalJson(Map<String, dynamic> data) => UserModel(
        gender: data['gender']  ?? '',
        title: data['name']?['title']  ?? '',
        firstName: data['name']?['first']  ?? '',
        lastName: data['name']?['last']  ?? '',
        streetNumber: (data['location']?['street']?['number'] as num?)?.toInt(),
        streetName: data['location']?['street']?['name']  ?? '',
        city: data['location']?['city']  ?? '',
        state: data['location']?['state']  ?? '',
        country: data['location']?['country']  ?? '',
        postcode: (data['location']?['postcode'] as num?)?.toInt(),
        latitude: (data['location']?['coordinates']?['latitude'])
            ?.toDouble(),
        longitude: (data['location']?['coordinates']?['longitude'])
            ?.toDouble(),
        timezoneOffset: data['location']?['timezone']?['offset']  ?? '',
        timezoneDescription:
            data['location']?['timezone']?['description']  ?? '',
        email: data['email']  ?? '',
        username: data['login']?['username']  ?? '',
        password: data['login']?['password']  ?? '',
        uuid: data['login']?['uuid']  ?? '',
        phone: data['phone']  ?? '',
        cell: data['cell']  ?? '',
        idName: data['id']?['name']  ?? '',
        largePicture: data['picture']?['large']  ?? '',
        mediumPicture: data['picture']?['medium']  ?? '',
        thumbnailPicture: data['picture']?['thumbnail']  ?? '',
        nationality: data['nat']  ?? '',
        dateOfBirth: data['dob']?['date'] != null
            ? DateTime.parse(data['dob']['date'])
            : null,
        age: data['dob']?['age'] ?? 0,
        registrationDate: data['registered']?['date'] != null
            ? DateTime.parse(data['registered']['date'])
            : null,
        registrationAge: data['registered']?['age'] ?? 0,
      );
}
