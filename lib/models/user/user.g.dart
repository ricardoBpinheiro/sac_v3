// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      Company.fromJson(json['company'] as Map<String, dynamic>),
      json['userCode'] as String,
      json['email'] as String,
      json['password'] as String,
      json['role'] as String,
      json['name'] as String,
      json['situation'] as String,
      (json['pagesAccess'] as List<dynamic>).map((e) => e as String).toList(),
      (json['ticketsAccess'] as List<dynamic>).map((e) => e as int).toList(),
      (json['companiesAccess'] as List<dynamic>).map((e) => e as int).toList(),
      (json['budgetsAccess'] as List<dynamic>).map((e) => e as int).toList(),
      json['creationDate'] == null
          ? null
          : DateTime.parse(json['creationDate'] as String),
      json['lastAccess'] == null
          ? null
          : DateTime.parse(json['lastAccess'] as String),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'company': instance.company,
      'userCode': instance.userCode,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'name': instance.name,
      'situation': instance.situation,
      'pagesAccess': instance.pagesAccess,
      'ticketsAccess': instance.ticketsAccess,
      'companiesAccess': instance.companiesAccess,
      'budgetsAccess': instance.budgetsAccess,
      'creationDate': instance.creationDate?.toIso8601String(),
      'lastAccess': instance.lastAccess?.toIso8601String(),
    };
