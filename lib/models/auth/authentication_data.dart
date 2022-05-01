import 'package:json_annotation/json_annotation.dart';
part 'authentication_data.g.dart';

@JsonSerializable()
class AuthenticationData {

  @JsonKey(name: 'codUsuario')
  final int codUsuario;

  @JsonKey(name: 'accessToken')
  final String accessToken;

  @JsonKey(name: 'tokenType')
  final String tokenType;

  @JsonKey(name: 'expiresIn')
  final int expiresIn;

  @JsonKey(name: 'expires')
  final int expires;

  @JsonKey(name: 'sessionExpires')
  final DateTime? sessionExpires;

  @JsonKey(name: 'sessionExpiresIn')
  final DateTime? sessionExpiresIn;

  AuthenticationData(
      this.codUsuario,
      this.accessToken,
      this.tokenType,
      this.expiresIn,
      this.expires,
      this.sessionExpires,
      this.sessionExpiresIn);

  factory AuthenticationData.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationDataFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationDataToJson(this);
}
