import 'package:provider/provider.dart';
import '../../data/dating_repository/dating_repository.dart';
import '../../data/services/user_service/user_service.dart';
import '../../features/personalization/providers/home_provider/home_provider.dart';

/// This class contains all the App Screen Providers in [ChangeNotifierProvider] formats.
class TAppProviders {

  final allAppProviders = [
    ChangeNotifierProvider(create: (_) => HomeProvider(DatingRepository(UserService()))),
  ];

}