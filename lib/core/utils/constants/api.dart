/// This class contains all the App Api Keys.
class TApi {

  /// API to get available to date users based on given page
  static String availableToDate(int page) => 'https://randomuser.me/api/?page=$page&results=10';
}