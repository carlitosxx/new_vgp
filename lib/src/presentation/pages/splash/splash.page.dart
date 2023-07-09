import 'package:flutter/material.dart';
import 'package:new_vgp/src/presentation/pages/splash/views/splash_phone.view.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    /// Agregar la logica para las vistas segun plataforma
    return const SplashPhoneView();
  }
}
