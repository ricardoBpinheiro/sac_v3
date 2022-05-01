import 'package:json_annotation/json_annotation.dart';
import 'package:sac_v3/models/user/company/company.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: 'company')
  final Company company;

  @JsonKey(name: 'userCode')
  final String userCode;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'role')
  final String role;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'situation')
  final String situation;

  @JsonKey(name: 'pagesAccess') 
  final List<String> pagesAccess;

  @JsonKey(name: 'ticketsAccess') // PRA QUE ?
  final List<int> ticketsAccess;

  @JsonKey(name: 'companiesAccess') 
  final List<int> companiesAccess;

  @JsonKey(name: 'budgetsAccess') // PRA QUE ?
  final List<int> budgetsAccess;

  @JsonKey(name: 'creationDate')
  final DateTime? creationDate;

  @JsonKey(name: 'lastAccess')
  final DateTime? lastAccess;

  User(
    this.company,
    this.userCode,
    this.email,
    this.password,
    this.role,
    this.name,
    this.situation,
    this.pagesAccess,
    this.ticketsAccess,
    this.companiesAccess,
    this.budgetsAccess,
    this.creationDate,
    this.lastAccess,
  );

   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

}
