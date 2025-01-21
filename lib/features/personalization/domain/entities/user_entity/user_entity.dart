import 'package:equatable/equatable.dart';

/// Entity class representing user-data.
class UserEntity extends Equatable {
  final String? gender;
  final String? title;
  final String? firstName;
  final String? lastName;
  final int? streetNumber;
  final String? streetName;
  final String? city;
  final String? state;
  final String? country;
  final int? postcode;
  final double? latitude;
  final double? longitude;
  final String? timezoneOffset;
  final String? timezoneDescription;
  final String? email;
  final String? username;
  final String? password;
  final String? uuid;
  final String? phone;
  final String? cell;
  final String? idName;
  final String? idValue;
  final String? largePicture;
  final String? mediumPicture;
  final String? thumbnailPicture;
  final String? nationality;
  final DateTime? dateOfBirth;
  final int? age;
  final DateTime? registrationDate;
  final int? registrationAge;

  /// Constructor for [UserEntity]
  const UserEntity({
    this.gender,
    this.title,
    this.firstName,
    this.lastName,
    this.streetNumber,
    this.streetName,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.latitude,
    this.longitude,
    this.timezoneOffset,
    this.timezoneDescription,
    this.email,
    this.username,
    this.password,
    this.uuid,
    this.phone,
    this.cell,
    this.idName,
    this.idValue,
    this.largePicture,
    this.mediumPicture,
    this.thumbnailPicture,
    this.nationality,
    this.dateOfBirth,
    this.age,
    this.registrationDate,
    this.registrationAge,
  });

  @override
  List<Object?> get props => [
        gender,
        title,
        firstName,
        lastName,
        streetNumber,
        streetName,
        city,
        state,
        country,
        postcode,
        latitude,
        longitude,
        timezoneOffset,
        timezoneDescription,
        email,
        username,
        password,
        uuid,
        phone,
        cell,
        idName,
        idValue,
        largePicture,
        mediumPicture,
        thumbnailPicture,
        nationality,
        dateOfBirth,
        age,
        registrationDate,
        registrationAge,
      ];
}
