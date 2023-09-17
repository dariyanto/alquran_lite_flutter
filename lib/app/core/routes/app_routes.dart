import '../../persentation/screen/quran/ayat/view/ayat_view.dart';
import '../../persentation/screen/quran/surat/view/surat_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SuratView(),
    ),
    GoRoute(
      path: '/:suratId',
      builder: (context, state) => AyatView(
        suratId: state.pathParameters['suratId']!,
      ),
    ),
  ],
);
