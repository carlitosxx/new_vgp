import 'package:new_vgp/src/domain/respositories/auth/auth.respository.dart';

class GetSigninUC {
  GetSigninUC(this.loginRepository);

  final AuthRepository loginRepository;

  TokenOrFailure call(String emailOrPhone, String password) async {
    return loginRepository.getSignin(emailOrPhone, password);
  }
}
