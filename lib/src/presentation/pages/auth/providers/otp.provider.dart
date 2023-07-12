import 'package:flutter_riverpod/flutter_riverpod.dart';

final numbersOTPProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});
