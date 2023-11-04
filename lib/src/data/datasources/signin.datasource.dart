import 'package:new_vgp/src/domain/respositories/auth/auth.respository.dart';

abstract class SigninDataSource {
  TokenOrFailure getLogin(String email, String password);
}

class SigninDataSourceImpl implements SigninDataSource {
  @override
  TokenOrFailure getLogin(String email, String password) {
    throw UnimplementedError();
  }
}
