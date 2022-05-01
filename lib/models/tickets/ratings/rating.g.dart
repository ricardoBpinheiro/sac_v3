// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      json['ticketId'] as int,
      json['ratingType'] as String,
      json['note'] as int,
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'ticketId': instance.ticketId,
      'ratingType': instance.ratingType,
      'note': instance.note,
    };
