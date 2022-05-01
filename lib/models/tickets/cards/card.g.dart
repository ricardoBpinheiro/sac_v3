// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) => Card(
      json['id'] as String,
      Company.fromJson(json['company'] as Map<String, dynamic>),
      json['ticketId'] as int,
      json['description'] as String,
      json['details'] as String,
      json['situation'] as String,
      json['responsible'] as String,
      json['lastUpdate'] as String,
      json['sequence'] as String,
      json['employees'] as String,
      DateTime.parse(json['creationDate'] as String),
      DateTime.parse(json['deadLine'] as String),
      DateTime.parse(json['deadLineUntil'] as String),
      json['deleted'] as String,
    );

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'ticketId': instance.ticketId,
      'description': instance.description,
      'details': instance.details,
      'situation': instance.situation,
      'responsible': instance.responsible,
      'lastUpdate': instance.lastUpdate,
      'sequence': instance.sequence,
      'employees': instance.employees,
      'creationDate': instance.creationDate.toIso8601String(),
      'deadLine': instance.deadLine.toIso8601String(),
      'deadLineUntil': instance.deadLineUntil.toIso8601String(),
      'deleted': instance.deleted,
    };
