// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      json['ticketId'] as int,
      Company.fromJson(json['company'] as Map<String, dynamic>),
      json['requester'] as String,
      json['type'] as String,
      json['user'] as String,
      json['responsible'] as String,
      json['title'] as String,
      json['recurringError'] as String,
      json['description'] as String,
      json['priority'] as String,
      (json['files'] as List<dynamic>)
          .map((e) => File.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['situation'] as String,
      json['openDate'] as String,
      json['email'] as String,
      json['underAnalysis'] as int,
      DateTime.parse(json['dateTimeAnalysis'] as String),
      json['responsibleForClose'] as String,
      json['ticketClosed'] as int,
      Interation.fromJson(json['lastInteration'] as Map<String, dynamic>),
      json['openTime'] as String,
      json['pausedTime'] as String,
      (json['ratings'] as List<dynamic>)
          .map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['observerEmails'] as String,
      (json['linkedTickets'] as List<dynamic>)
          .map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'ticketId': instance.ticketId,
      'company': instance.company,
      'requester': instance.requester,
      'type': instance.type,
      'user': instance.user,
      'responsible': instance.responsible,
      'title': instance.title,
      'recurringError': instance.recurringError,
      'description': instance.description,
      'priority': instance.priority,
      'files': instance.files,
      'situation': instance.situation,
      'openDate': instance.openDate,
      'email': instance.email,
      'underAnalysis': instance.underAnalysis,
      'dateTimeAnalysis': instance.dateTimeAnalysis.toIso8601String(),
      'responsibleForClose': instance.responsibleForClose,
      'ticketClosed': instance.ticketClosed,
      'lastInteration': instance.lastInteration,
      'openTime': instance.openTime,
      'pausedTime': instance.pausedTime,
      'ratings': instance.ratings,
      'observerEmails': instance.observerEmails,
      'linkedTickets': instance.linkedTickets,
    };
