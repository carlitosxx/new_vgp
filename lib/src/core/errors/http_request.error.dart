import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_vgp/src/data/models/bad_request.model.dart';

part 'http_request.error.freezed.dart';

@freezed
class HttpRequestFailure with _$HttpRequestFailure {
  factory HttpRequestFailure.network() = _Network;
  factory HttpRequestFailure.notFound() = _NotFound;
  factory HttpRequestFailure.server() = _Server;
  factory HttpRequestFailure.unauthorized() = _Unauthorized;
  factory HttpRequestFailure.badRequest(BadRequestModel dataError) =
      _BadRequest;
  factory HttpRequestFailure.local() = _Local;
}
