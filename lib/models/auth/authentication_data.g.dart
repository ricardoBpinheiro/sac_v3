// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationData _$AuthenticationDataFromJson(Map<String, dynamic> json) =>
    AuthenticationData(
      json['codUsuario'] as int,
      json['accessToken'] as String,
      json['tokenType'] as String,
      json['expiresIn'] as int,
      json['expires'] as int,
      json['sessionExpires'] == null
          ? null
          : DateTime.parse(json['sessionExpires'] as String),
      json['sessionExpiresIn'] == null
          ? null
          : DateTime.parse(json['sessionExpiresIn'] as String),
    );

Map<String, dynamic> _$AuthenticationDataToJson(AuthenticationData instance) =>
    <String, dynamic>{
      'codUsuario': instance.codUsuario,
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'expires': instance.expires,
      'sessionExpires': instance.sessionExpires?.toIso8601String(),
      'sessionExpiresIn': instance.sessionExpiresIn?.toIso8601String(),
    };
