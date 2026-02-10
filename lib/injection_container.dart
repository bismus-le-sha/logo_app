import 'package:get_it/get_it.dart';
import 'package:logo_app/core/router/router.dart';
import 'package:logo_app/cubits/counter_cubit.dart';
import 'package:logo_app/cubits/logo_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerSingleton<AppRouter>(AppRouter());
  sl.registerFactory<LogoCubit>(() => LogoCubit());
  sl.registerFactory<CounterCubit>(() => CounterCubit());
}
