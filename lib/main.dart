import 'package:flutter/material.dart';
import 'package:logo_app/core/router/router.dart';
import 'package:logo_app/core/theme/app_theme.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: di.sl<AppRouter>().config(),
      theme: appTheme,
    );
  }
}
