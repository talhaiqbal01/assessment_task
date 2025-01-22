/// Model class representing geopoint data.
class GeoPoint {
  final double latitude;
  final double longitude;

  /// Constructor for [GeoPoint]
  const GeoPoint({
    required this.latitude,
    required this.longitude,
  });

  /// Function to create an empty [GeoPoint].
  static GeoPoint empty() => GeoPoint(latitude: 0.0, longitude: 0.0);
}