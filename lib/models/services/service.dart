import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';
part 'service.g.dart';

@JsonSerializable()
class Service {

  @JsonKey(name: 'ticketId')
  final int ticketId;
  
  @JsonKey(name: 'responsible')
  final String responsible;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'creationDate') 
  final DateTime creationDate;

  @JsonKey(name: 'startTime') 
  final String startTime;

  @JsonKey(name: 'stopTime')
  final String stopTime;

  @JsonKey(name: 'aprovedValue')
  final double aprovedValue;

  @JsonKey(name: 'amountCharged')
  final double amountCharged;

  @JsonKey(name: 'valueExpenses')
  final double valueExpenses;

  @JsonKey(name: 'totalValue')
  final double totalValue;

  @JsonKey(name: 'usedTime')
  final double usedTime;

  @JsonKey(name: 'budgetedTime')
  final double budgetedTime;

  @JsonKey(name: 'percentageUsed')
  final double percentageUsed;

  Service(
    this.ticketId,
    this.responsible,
    this.description,
    this.creationDate,
    this.startTime,
    this.stopTime,
    this.aprovedValue,
    this.amountCharged,
    this.valueExpenses,
    this.totalValue,
    this.usedTime,
    this.budgetedTime,
    this.percentageUsed,
  );

   factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceToJson(this);

}
