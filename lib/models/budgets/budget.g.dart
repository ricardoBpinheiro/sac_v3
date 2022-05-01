// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Budget _$BudgetFromJson(Map<String, dynamic> json) => Budget(
      json['budgetId'] as int,
      json['title'] as String,
      Company.fromJson(json['company'] as Map<String, dynamic>),
      json['requester'] as String,
      json['email'] as String,
      json['user'] as String,
      DateTime.parse(json['generationDate'] as String),
      json['situation'] as String,
      json['module'] as String,
      (json['hourValue'] as num).toDouble(),
      json['customerUserAproved'] as String,
      json['customerDatetimeAproved'] == null
          ? null
          : DateTime.parse(json['customerDatetimeAproved'] as String),
    );

Map<String, dynamic> _$BudgetToJson(Budget instance) => <String, dynamic>{
      'budgetId': instance.budgetId,
      'title': instance.title,
      'company': instance.company,
      'requester': instance.requester,
      'email': instance.email,
      'user': instance.user,
      'generationDate': instance.generationDate.toIso8601String(),
      'situation': instance.situation,
      'module': instance.module,
      'hourValue': instance.hourValue,
      'customerUserAproved': instance.customerUserAproved,
      'customerDatetimeAproved':
          instance.customerDatetimeAproved?.toIso8601String(),
    };
