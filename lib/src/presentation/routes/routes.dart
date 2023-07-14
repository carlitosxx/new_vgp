import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:new_vgp/src/presentation/pages/auth/auth.page.dart';
import 'package:new_vgp/src/presentation/pages/auth/views/forgot_password_phone/create_new_password.view.dart';
import 'package:new_vgp/src/presentation/pages/auth/views/forgot_password_phone/forgot_password_phone.view.dart';
import 'package:new_vgp/src/presentation/pages/auth/views/register_phone/register_phone.view.dart';
import 'package:new_vgp/src/presentation/pages/auth/views/forgot_password_phone/verify_your_account_phone.view.dart';
import 'package:new_vgp/src/presentation/pages/home/home.page.dart';
import 'package:new_vgp/src/presentation/pages/splash/splash.page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => I18n(child: const SplashPage()),
    ),
    GoRoute(
      name: 'auth',
      path: '/auth',
      builder: (context, state) => I18n(child: const AuthPage()),
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      builder: (context, state) => I18n(child: const RegisterPhoneView()),
    ),
    GoRoute(
      name: 'forgot_password',
      path: '/forgot_password',
      builder: (context, state) => I18n(child: const ForgotPasswordPhoneView()),
    ),
    GoRoute(
      name: 'verify_account',
      path: '/verify_account',
      builder: (context, state) =>
          I18n(child: const VerifyYourAccountPhoneView()),
    ),
    GoRoute(
      name: 'create_new_password',
      path: '/create_new_password',
      builder: (context, state) =>
          I18n(child: const CreateNewPasswordPhoneView()),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => I18n(child: const HomePage()),
    )
  ]);
});
