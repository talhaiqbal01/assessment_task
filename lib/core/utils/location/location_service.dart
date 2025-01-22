import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import '../../models/geo_point/geo_point.dart';

/// Service class for location-related operations
class TLocationService {
  TLocationService._(); //-- To avoid creating instances

  /// Method to get user's current location
  static Future<GeoPoint> getUserLocationInGeoPoint() async {
    Location location = Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return GeoPoint.empty();
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return GeoPoint.empty();
      }
    }

    LocationData userLocation = await location.getLocation();

    return GeoPoint(latitude: userLocation.latitude ?? 0.0, longitude: userLocation.longitude ?? 0.0);
  }

  /// Calculates the distance between two [GeoPoint] and returns it as a formatted [String].
  static String calculateDistanceBtwGeoPointsInKm(GeoPoint firstLocation, GeoPoint secondLocation) {
    // Calculate the distance in meters
    double distanceInMeters = Geolocator.distanceBetween(
      firstLocation.latitude,
      firstLocation.longitude,
      secondLocation.latitude,
      secondLocation.longitude,
    );

    // Convert meters to kilometers and round to 1 decimal place
    double distanceInKm = distanceInMeters / 1000;
    return '${distanceInKm.toStringAsFixed(1)} km';
  }
}