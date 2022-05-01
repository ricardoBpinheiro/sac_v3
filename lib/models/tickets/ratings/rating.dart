import 'package:json_annotation/json_annotation.dart';
part 'rating.g.dart';

@JsonSerializable()
class Rating {

  @JsonKey(name: 'ticketId')
  final int ticketId;
  
  @JsonKey(name: 'ratingType')
  final String ratingType;

  @JsonKey(name: 'note')
  final int note;

  Rating(
    this.ticketId,
    this.ratingType,
    this.note,
  );

   factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
  Map<String, dynamic> toJson() => _$RatingToJson(this);

}
