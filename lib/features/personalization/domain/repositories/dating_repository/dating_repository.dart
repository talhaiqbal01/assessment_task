import '../../../../../core/resources/data_state/data_state.dart';
import '../../entities/user_entity/user_entity.dart';

/// Repository class containing dating-related logic
abstract interface class DatingRepository {

  /*------------------------------------Variables------------------------------------*/


  /*------------------------------------Methods------------------------------------*/

  ///-- Action Functions

  ///-- Fetching Functions

  /// Method to fetch personal information from [API] as a subtype of [UserEntity]
  Future<DataState<UserEntity>> fetchAvailableToDateFromServer();
}
