import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:new_vgp/src/presentation/pages/splash/splash.page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => I18n(child: const SplashPage()),
    ),
  ]);
});
