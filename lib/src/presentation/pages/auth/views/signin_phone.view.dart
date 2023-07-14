import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_vgp/src/presentation/pages/auth/auth.i18n.dart';
import 'package:new_vgp/src/presentation/routes/routes.dart';
import 'package:new_vgp/src/presentation/widgets/button.widget.dart';
import 'package:new_vgp/src/presentation/widgets/textfield.widget.dart';

class SignInPhoneView extends ConsumerStatefulWidget {
  const SignInPhoneView({super.key});

  @override
  SignInPhoneViewState createState() => SignInPhoneViewState();
}

class SignInPhoneViewState extends ConsumerState<SignInPhoneView> {
  //Controllers
  final email = TextEditingController();
  final password = TextEditingController();
  bool termAndConditionsCheckbox = false;
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
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        bottom: heightSpacerBar / 2,
                      ),
                      child: SvgPicture.asset(
                        assetBrand,
                        height: widthBrand,
                      ),
                    ),
                    //Title
                    Text(
                      kSignIn.i18n,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              fontWeight: FontWeight.w500,
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                    ),
                    const SizedBox(height: 8),
                    //Message
                    Text(
                      kSignInMessage.i18n,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.onBackground),
                    ),

                    const SizedBox(
                      height: 16,
                    ),
                    //Textfield email
                    TextfieldWidget(
                      controller: email,
                      inputType: TextInputType.emailAddress,
                      isPassword: false,
                      hint: kHintEmailPhone.i18n,
                      hasIcon: true,
                      icon: Icons.person_outline,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    //Textfield password
                    TextfieldWidget(
                        controller: password,
                        inputType: TextInputType.emailAddress,
                        isPassword: true,
                        hint: kHintPassword.i18n,
                        hasIcon: true,
                        icon: Icons.lock_outlined),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          ref
                              .read(appRouterProvider)
                              .pushNamed('forgot_password');
                        },
                        child: Text(kForgotPassword.i18n,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          height: 142,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ButtonWidget(
                  text: kButtonSignIn.i18n,
                  isPrimary: true,
                  onButtonClick: () {},
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ButtonWidget(
                    text: kCreateAccount.i18n,
                    isPrimary: false,
                    onButtonClick: () {
                      ref.read(appRouterProvider).pushNamed('register');
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
