import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_vgp/src/presentation/pages/auth/providers/otp.provider.dart';

class ButtonNumericWidget extends ConsumerWidget {
  const ButtonNumericWidget({required this.number, super.key});
  final int number;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codes = ref.watch(numbersOTPProvider);
    return TextButton(
      onPressed: () {
        if (codes.length != 4) {
          ref.read(numbersOTPProvider.notifier).update((state) {
            final newString = '$state$number';
            return newString;
          });
        }
      },
      child: Text(
        '$number',
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
