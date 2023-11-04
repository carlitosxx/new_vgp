import 'package:new_vgp/src/core/errors/http_request.error.dart';
import 'package:new_vgp/src/core/utils/either.util.dart';

typedef TokenOrFailure = Future<Either<HttpRequestFailure, String>>;

abstract class AuthRepository {
  TokenOrFailure getSignin(String emailOrPhone, String password);
}
