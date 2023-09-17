import 'package:flutter/material.dart';

import 'app/core/di/service_locator.dart';
import 'app/core/routes/app_routes.dart';
import 'app/core/services/auth_service.dart';


Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AuthService().signinAnonymously();
  await initServiceLocator();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueGrey,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueGrey,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
    );
  }
}
