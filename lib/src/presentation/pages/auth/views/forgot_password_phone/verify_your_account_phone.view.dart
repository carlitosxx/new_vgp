import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_vgp/src/presentation/pages/auth/providers/otp.provider.dart';
import 'package:new_vgp/src/presentation/pages/auth/auth.i18n.dart';
import 'package:new_vgp/src/presentation/pages/auth/widgets/button_numeric.widget.dart';
import 'package:new_vgp/src/presentation/pages/auth/widgets/field_otp.widget.dart';
import 'package:new_vgp/src/presentation/routes/routes.dart';
import 'package:new_vgp/src/presentation/widgets/button.widget.dart';

class VerifyYourAccountPhoneView extends ConsumerWidget {
  const VerifyYourAccountPhoneView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codes = ref.watch(numbersOTPProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(kVerifyYourEmail.i18n),
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
                      'assets/svg/icons/email.svg',
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Text(
                    kPleaseEnterYourCode.i18n,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FieldOTPWidget(index: 0),
                      FieldOTPWidget(index: 1),
                      FieldOTPWidget(index: 2),
                      FieldOTPWidget(index: 3),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ButtonNumericWidget(
                              number: 1,
                            ),
                            ButtonNumericWidget(
                              number: 2,
                            ),
                            ButtonNumericWidget(
                              number: 3,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ButtonNumericWidget(
                              number: 4,
                            ),
                            ButtonNumericWidget(
                              number: 5,
                            ),
                            ButtonNumericWidget(
                              number: 6,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ButtonNumericWidget(
                              number: 7,
                            ),
                            ButtonNumericWidget(
                              number: 8,
                            ),
                            ButtonNumericWidget(
                              number: 9,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TextButton(
                            onPressed: null,
                            child: SizedBox.shrink(),
                          ),
                          const ButtonNumericWidget(
                            number: 0,
                          ),
                          TextButton(
                            onPressed: () {
                              if (codes.isNotEmpty) {
                                ref
                                    .read(numbersOTPProvider.notifier)
                                    .update((state) {
                                  final newString =
                                      state.substring(0, state.length - 1);
                                  return newString;
                                });
                              }
                            },
                            child: const Icon(Icons.backspace_outlined),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            kDidntReceiveCode.i18n,
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              kResend.i18n,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
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
            text: kCreateAccount.i18n,
            isPrimary: true,
            onButtonClick: () {
              ref.read(appRouterProvider).pushNamed('create_new_password');
              // ref.read(appRouterProvider).pushNamed('');
            },
          ),
        ),
      ),
    );
  }
}
