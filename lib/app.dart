import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'app/core/di/app_binding.dart';
import 'app/core/routes/app_pages.dart';
import 'app/core/services/auth_service.dart';
import 'app/core/services/premium_service.dart';
import 'app/data/data_source/local/model/post_entity.dart';

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PremiumService().init();
  await GetStorage.init();
  await AuthService().signinAnonymously();
  final dir = await getApplicationDocumentsDirectory();
  await Isar.open(
    [PostSchema],
    directory: dir.path,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      defaultGlobalState: false,
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
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
