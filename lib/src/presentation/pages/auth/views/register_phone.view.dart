import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_vgp/src/presentation/pages/auth/auth.i18n.dart';
import 'package:new_vgp/src/presentation/widgets/button.widget.dart';
import 'package:new_vgp/src/presentation/widgets/textfield.widget.dart';

class RegisterPhoneView extends ConsumerStatefulWidget {
  const RegisterPhoneView({super.key});

  @override
  RegisterPhoneViewState createState() => RegisterPhoneViewState();
}

class RegisterPhoneViewState extends ConsumerState<RegisterPhoneView> {
  final heightSpacerBar = const Size.fromHeight(kToolbarHeight).height;
  final email = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();
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
                child: Column(children: [
                  //Logo
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
                  const SizedBox(
                    height: 24,
                  ),
                  //Textfield email
                  TextfieldWidget(
                    controller: email,
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                    hint: kHintEmail.i18n,
                    hasIcon: true,
                    icon: Icons.email_outlined,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  //Phone
                  TextfieldWidget(
                    controller: phone,
                    inputType: TextInputType.phone,
                    isPassword: false,
                    hint: kHintPhone.i18n,
                    hasIcon: true,
                    icon: Icons.phone_outlined,
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
                  const SizedBox(
                    height: 8,
                  ),
                  //Terms and Conditions
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Theme.of(context).colorScheme.secondary,
                          value: false,
                          onChanged: (newValue) {
                            // setState(() {
                            //   termAndConditionsChckbox = newValue!;
                            // });
                          }),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Yo acepto los ',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground)),
                            TextSpan(
                              text: 'Terminos y Condiciones',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          // height: 148,
          child: SizedBox(
            width: double.infinity,
            child: ButtonWidget(
              text: kCreateAccount.i18n,
              isPrimary: true,
              onButtonClick: () {},
            ),
          ),
        ),
      ),
    );
  }
}
