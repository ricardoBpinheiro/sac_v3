import 'package:json_annotation/json_annotation.dart';
import 'package:sac_v3/models/user/company/company.dart';
part 'budget.g.dart';

@JsonSerializable()
class Budget {

  @JsonKey(name: 'budgetId')
  final int budgetId;
  
  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'company') 
  final Company company;

  @JsonKey(name: 'requester')
  final String requester;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'user')
  final String user;

  @JsonKey(name: 'generationDate')
  final DateTime generationDate;

  @JsonKey(name: 'situation')
  final String situation;

  @JsonKey(name: 'module')
  final String module;

  @JsonKey(name: 'hourValue')
  final double hourValue;

  @JsonKey(name: 'customerUserAproved')
  final String customerUserAproved;

  @JsonKey(name: 'customerDatetimeAproved')
  final DateTime? customerDatetimeAproved;

  Budget(
    this.budgetId,
    this.title,
    this.company,
    this.requester,
    this.email,
    this.user,
    this.generationDate,
    this.situation,
    this.module,
    this.hourValue,
    this.customerUserAproved,
    this.customerDatetimeAproved,
  );

   factory Budget.fromJson(Map<String, dynamic> json) => _$BudgetFromJson(json);
  Map<String, dynamic> toJson() => _$BudgetToJson(this);

}
