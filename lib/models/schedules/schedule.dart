import 'package:json_annotation/json_annotation.dart';
import 'package:sac_v3/models/user/company/company.dart';
part 'schedule.g.dart';

@JsonSerializable()
class Schedule {

  @JsonKey(name: 'ticketId')
  final int ticketId;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'employee')
  final String employee;
  
  @JsonKey(name: 'company')
  final Company company;

  @JsonKey(name: 'date')
  final DateTime date;

  @JsonKey(name: 'time')
  final String time;

  Schedule(
    this.ticketId,
    this.title,
    this.employee,
    this.company,
    this.date,
    this.time,
  );

   factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
  Map<String, dynamic> toJson() => _$ScheduleToJson(this);

}
