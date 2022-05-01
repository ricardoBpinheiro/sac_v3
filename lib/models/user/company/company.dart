import 'package:json_annotation/json_annotation.dart';
part 'company.g.dart';

@JsonSerializable()
class Company {

  @JsonKey(name: 'companyId')
  final int companyId;

  @JsonKey(name: 'name')
  final String name;

  Company(
    this.companyId,
    this.name
  );

   factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyToJson(this);

}
