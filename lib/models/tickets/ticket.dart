import 'package:json_annotation/json_annotation.dart';
import 'package:sac_v3/models/tickets/files/file.dart';
import 'package:sac_v3/models/tickets/interations/interation.dart';
import 'package:sac_v3/models/tickets/ratings/rating.dart';
import 'package:sac_v3/models/user/company/company.dart';
part 'ticket.g.dart';

@JsonSerializable()
class Ticket {
  @JsonKey(name: 'ticketId')
  final int ticketId;

  @JsonKey(name: 'company')
  final Company company;

  @JsonKey(name: 'requester') // Solicitante
  final String requester;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'user')
  final String user;

  @JsonKey(name: 'responsible')
  final String responsible;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'recurringError')
  final String recurringError;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'priority')
  final String priority;

  @JsonKey(name: 'files') // Anexos
  final List<File> files;

  @JsonKey(name: 'situation')
  final String situation;

  @JsonKey(name: 'openDate')
  final String openDate;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'underAnalysis')
  final int underAnalysis;

  @JsonKey(name: 'dateTimeAnalysis')
  final DateTime dateTimeAnalysis;

  @JsonKey(name: 'responsibleForClose')
  final String responsibleForClose;

  @JsonKey(name: 'ticketClosed')
  final int ticketClosed;

  @JsonKey(name: 'lastInteration')
  final Interation lastInteration;

  @JsonKey(name: 'openTime')
  final String openTime;

  @JsonKey(name: 'pausedTime')
  final String pausedTime;

  @JsonKey(name: 'ratings')
  final List<Rating> ratings;

  @JsonKey(name: 'observerEmails')
  final String observerEmails;

  @JsonKey(name: 'linkedTickets')
  final List<Ticket> linkedTickets;

  Ticket(
    this.ticketId,
    this.company,
    this.requester,
    this.type,
    this.user,
    this.responsible,
    this.title,
    this.recurringError,
    this.description,
    this.priority,
    this.files,
    this.situation,
    this.openDate,
    this.email,
    this.underAnalysis,
    this.dateTimeAnalysis,
    this.responsibleForClose,
    this.ticketClosed,
    this.lastInteration,
    this.openTime,
    this.pausedTime,
    this.ratings,
    this.observerEmails,
    this.linkedTickets,
  );

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
  Map<String, dynamic> toJson() => _$TicketToJson(this);
}
