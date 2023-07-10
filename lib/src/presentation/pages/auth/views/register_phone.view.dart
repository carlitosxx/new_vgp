import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_vgp/src/presentation/pages/auth/auth.i18n.dart';

class RegisterPhoneView extends StatefulWidget {
  const RegisterPhoneView({super.key});

  @override
  State<RegisterPhoneView> createState() => _RegisterPhoneViewState();
}

class _RegisterPhoneViewState extends State<RegisterPhoneView> {
  final heightSpacerBar = const Size.fromHeight(kToolbarHeight).height;
  @override
  Widget build(BuildContext context) {
    const assetBrand = 'assets/svg/logo/logo.svg';
    final widthBrand = MediaQuery.of(context).size.width / 3;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(),
        body: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(children: [
                  //Logo
                  Container(
                    padding: EdgeInsets.only(
                      top: heightSpacerBar,
                      bottom: heightSpacerBar,
                    ),
                    child: SvgPicture.asset(
                      assetBrand,
                      height: widthBrand,
                    ),
                  ),
                  //Title
                  Text(
                    kRegister.i18n,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                  const SizedBox(height: 8),
                  //Message
                  Text(
                    kRegisterMessage.i18n,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
