import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:new_vgp/src/presentation/pages/auth/providers/otp.provider.dart';

class FieldOTPWidget extends ConsumerWidget {
  const FieldOTPWidget({
    required this.index,
    super.key,
  });
  final int index;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final code = ref.watch(numbersOTPProvider);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground.withOpacity(.05),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      width: 50,
      child: Center(
        child: (code.length >= index + 1)
            ? Text(
                code[index],
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              )
            : Text(
                '',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
      ),
    );
  }
}
