import 'package:get_it/get_it.dart';
import 'package:logo_app/core/router/router.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Config
  sl.registerSingleton<AppRouter>(AppRouter());
}
