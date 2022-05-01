// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Service _$ServiceFromJson(Map<String, dynamic> json) => Service(
      json['ticketId'] as int,
      json['responsible'] as String,
      json['description'] as String,
      DateTime.parse(json['creationDate'] as String),
      json['startTime'] as String,
      json['stopTime'] as String,
      (json['aprovedValue'] as num).toDouble(),
      (json['amountCharged'] as num).toDouble(),
      (json['valueExpenses'] as num).toDouble(),
      (json['totalValue'] as num).toDouble(),
      (json['usedTime'] as num).toDouble(),
      (json['budgetedTime'] as num).toDouble(),
      (json['percentageUsed'] as num).toDouble(),
    );

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      'ticketId': instance.ticketId,
      'responsible': instance.responsible,
      'description': instance.description,
      'creationDate': instance.creationDate.toIso8601String(),
      'startTime': instance.startTime,
      'stopTime': instance.stopTime,
      'aprovedValue': instance.aprovedValue,
      'amountCharged': instance.amountCharged,
      'valueExpenses': instance.valueExpenses,
      'totalValue': instance.totalValue,
      'usedTime': instance.usedTime,
      'budgetedTime': instance.budgetedTime,
      'percentageUsed': instance.percentageUsed,
    };
