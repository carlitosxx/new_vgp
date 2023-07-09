import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_vgp/src/presentation/pages/splash/splash.i18n.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPhoneView extends StatelessWidget {
  const SplashPhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetBrand = 'assets/svg/logo/logo.svg';
    return Scaffold(
      backgroundColor: const Color(0xFF4E9090),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              assetBrand,
              width: MediaQuery.of(context).size.width / 3,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              kBrand.i18n,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
