// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Interation _$InterationFromJson(Map<String, dynamic> json) => Interation(
      json['ticketId'] as int,
      Company.fromJson(json['company'] as Map<String, dynamic>),
      json['description'] as String,
      json['creationDate'] as String,
      json['user'] as String,
      (json['files'] as List<dynamic>)
          .map((e) => File.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InterationToJson(Interation instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'company': instance.company,
      'description': instance.description,
      'creationDate': instance.creationDate,
      'user': instance.user,
      'files': instance.files,
    };
