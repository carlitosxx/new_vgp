import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_vgp/src/presentation/pages/auth/auth.i18n.dart';
import 'package:new_vgp/src/presentation/routes/routes.dart';
import 'package:new_vgp/src/presentation/widgets/button.widget.dart';
import 'package:new_vgp/src/presentation/widgets/textfield.widget.dart';

class CreateNewPasswordPhoneView extends ConsumerStatefulWidget {
  const CreateNewPasswordPhoneView({super.key});

  @override
  CreateNewPasswordPhoneViewState createState() =>
      CreateNewPasswordPhoneViewState();
}

class CreateNewPasswordPhoneViewState
    extends ConsumerState<CreateNewPasswordPhoneView> {
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(kCreateNewPassword.i18n),
        ),
        body: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryContainer,
                      radius: MediaQuery.of(context).size.width / 4,
                      child: SvgPicture.asset(
                        'assets/svg/icons/padlock.svg',
                        width: MediaQuery.of(context).size.width / 4,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      kCreatePasswordMessage.i18n,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextfieldWidget(
                      controller: newPasswordController,
                      inputType: TextInputType.visiblePassword,
                      isPassword: true,
                      hint: kNewPassword.i18n,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextfieldWidget(
                      controller: confirmPasswordController,
                      inputType: TextInputType.visiblePassword,
                      isPassword: true,
                      hint: kConfirmNewPassword.i18n,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          child: SizedBox(
            width: double.infinity,
            child: ButtonWidget(
              text: kSend.i18n,
              isPrimary: true,
              onButtonClick: () {
                ref.read(appRouterProvider).goNamed('home');
              },
            ),
          ),
        ),
      ),
    );
  }
}
