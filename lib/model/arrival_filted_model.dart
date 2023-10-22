// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'arrival_model.dart';

part 'arrival_filted_model.freezed.dart';
part 'arrival_filted_model.g.dart';

@freezed
class FiltedArrivalModel with _$FiltedArrivalModel {
  const factory FiltedArrivalModel({
    List<ArrivalModel>? arrival,
    @Default("정보없음") String? upFirst,
    @Default("정보없음") String? upLast,
    @Default("정보없음") String? downFirst,
    @Default("정보없음") String? downLast,
  }) = _FiltedArrivalModel;

  factory FiltedArrivalModel.fromJson(Map<String, dynamic> json) =>
      _$FiltedArrivalModelFromJson(json);
}
