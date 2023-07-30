import 'package:get/get.dart';

import '../../persentation/page/detail/bindings/detail_binding.dart';
import '../../persentation/page/detail/views/detail_view.dart';
import '../../persentation/page/home/bindings/home_binding.dart';
import '../../persentation/page/home/views/home_view.dart';
import '../../persentation/page/landing_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LANDING;

  static final routes = [
    GetPage(
      name: _Paths.LANDING,
      page: () => const LandingView(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: _Paths.DETAIL,
          page: () => const DetailView(),
          binding: DetailBinding(),
        ),
      ],
    ),
  ];
}
