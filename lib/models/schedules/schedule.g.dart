// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Schedule _$ScheduleFromJson(Map<String, dynamic> json) => Schedule(
      json['ticketId'] as int,
      json['title'] as String,
      json['employee'] as String,
      Company.fromJson(json['company'] as Map<String, dynamic>),
      DateTime.parse(json['date'] as String),
      json['time'] as String,
    );

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'ticketId': instance.ticketId,
      'title': instance.title,
      'employee': instance.employee,
      'company': instance.company,
      'date': instance.date.toIso8601String(),
      'time': instance.time,
    };
