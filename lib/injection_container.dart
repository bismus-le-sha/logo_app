import 'package:get_it/get_it.dart';
import 'package:logo_app/core/router/router.dart';
import 'package:logo_app/cubits/logo_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Config
  sl.registerSingleton<AppRouter>(AppRouter());

  //!Cubits
  sl.registerFactory<LogoCubit>(() => LogoCubit());
}
