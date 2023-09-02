import 'package:alquran_lite_flutter/app/data/data_source/local/model/bookmark_entity.dart';
import 'package:alquran_lite_flutter/app/data/data_source/local/model/riwayat_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/core/di/app_binding.dart';
import 'app/core/routes/app_pages.dart';
import 'app/core/services/auth_service.dart';
import 'app/core/services/premium_service.dart';
import 'app/data/data_source/local/model/ayat_entity.dart';
import 'app/data/data_source/local/model/surat_entity.dart';
import 'app/data/data_source/local/model/tafsir_entity.dart';

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  var prefs = await SharedPreferences.getInstance();
  Get.lazyPut(() => prefs);
  await PremiumService().init();
  await AuthService().signinAnonymously();
  final dir = await getApplicationDocumentsDirectory();
  await Isar.open(
    [SuratSchema, AyatSchema, TafsirSchema, BookmarkSchema, RiwayatSchema],
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
