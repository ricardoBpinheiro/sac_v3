import 'package:json_annotation/json_annotation.dart';
import 'package:sac_v3/models/user/company/company.dart';
part 'card.g.dart';

@JsonSerializable()
class Card {

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'company')
  final Company company;

  @JsonKey(name: 'ticketId')
  final int ticketId;
  
  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'details')
  final String details;

  @JsonKey(name: 'situation')
  final String situation;

  @JsonKey(name: 'responsible')
  final String responsible;

  @JsonKey(name: 'lastUpdate')
  final String lastUpdate;

  @JsonKey(name: 'sequence')
  final String sequence;

  @JsonKey(name: 'employees')
  final String employees;

  @JsonKey(name: 'creationDate')
  final DateTime creationDate;

  @JsonKey(name: 'deadLine')
  final DateTime deadLine;

  @JsonKey(name: 'deadLineUntil')
  final DateTime deadLineUntil;

  @JsonKey(name: 'deleted')
  final String deleted;

  Card(
    this.id,
    this.company,
    this.ticketId,
    this.description,
    this.details,
    this.situation,
    this.responsible,
    this.lastUpdate,
    this.sequence,
    this.employees,
    this.creationDate,
    this.deadLine,
    this.deadLineUntil,
    this.deleted,
  );

   factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
  Map<String, dynamic> toJson() => _$CardToJson(this);

}
