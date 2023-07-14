import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_vgp/src/presentation/pages/auth/auth.i18n.dart';
import 'package:new_vgp/src/presentation/routes/routes.dart';
import 'package:new_vgp/src/presentation/widgets/button.widget.dart';

class ForgotPasswordPhoneView extends ConsumerStatefulWidget {
  const ForgotPasswordPhoneView({super.key});

  @override
  ForgotPasswordPhoneViewState createState() => ForgotPasswordPhoneViewState();
}

class ForgotPasswordPhoneViewState
    extends ConsumerState<ForgotPasswordPhoneView> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(kForgotPasswordTitle.i18n),
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
                      kForgotPasswordMessage.i18n,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 30, 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(.05),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 15,
                          top: 12,
                          child: Icon(
                            Icons.email,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 50, right: 16),
                          child: TextField(
                            controller: emailController,
                            maxLength: 50,
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                            decoration: InputDecoration(
                              counterText: '',
                              border: InputBorder.none,
                              hintText: kHintEmail.i18n,
                              hintStyle: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onBackground
                                    .withOpacity(0.3),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, top: 8),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            kTryAnotherWay.i18n,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                          PopupMenuButton(
                              icon: Icon(
                                Icons.more_vert,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              itemBuilder: (context) => [
                                    PopupMenuItem(
                                      onTap: () {},
                                      child: const Text("Sms"),
                                    ),
                                    // PopupMenuItem(
                                    //   onTap: () {},
                                    //   child: const Text("WhatsApp"),
                                    // ),
                                  ]),
                        ],
                      ),
                    ),
                  )
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
                ref.read(appRouterProvider).pushNamed('verify_account');
              },
            ),
          ),
        ),
      ),
    );
  }
}
