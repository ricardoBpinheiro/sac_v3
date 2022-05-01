import 'package:json_annotation/json_annotation.dart';
import 'package:sac_v3/models/tickets/files/file.dart';
import 'package:sac_v3/models/user/company/company.dart';
part 'interation.g.dart';

@JsonSerializable()
class Interation {

  @JsonKey(name: 'ticketId')
  final int ticketId;
  
  @JsonKey(name: 'company')
  final Company company;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'creationDate') 
  final String creationDate;

  @JsonKey(name: 'user') 
  final String user;

  @JsonKey(name: 'files') // Anexos
  final List<File> files;

  Interation(
    this.ticketId,
    this.company,
    this.description,
    this.creationDate,
    this.user,
    this.files,
  );

   factory Interation.fromJson(Map<String, dynamic> json) => _$InterationFromJson(json);
  Map<String, dynamic> toJson() => _$InterationToJson(this);

}
