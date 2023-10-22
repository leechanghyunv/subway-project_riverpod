// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_model.g.dart';
part 'schedule_model.freezed.dart';

@Freezed()
class TableModel with _$TableModel{
  const factory TableModel({
    @Default("정보없음") @JsonKey(name: 'STATION_CD') String stationCd,
    @Default("정보없음") @JsonKey(name: 'STATION_NM') String stationNm,
    @Default("정보없음") @JsonKey(name: 'ARRIVETIME')  String arriveTime,
    @Default("정보없음") @JsonKey(name: 'ORIGINSTATION') String originStation,
    @Default("정보없음") @JsonKey(name: 'SUBWAYSNAME') String sName,
    @Default("정보없음") @JsonKey(name: 'SUBWAYENAME') String eName,
    @Default(EXPRESS.GENERAL) @JsonKey(name: 'EXPRESS_YN') EXPRESS express,
  }) = _TableModel;
  factory TableModel.fromJson(Map<String, Object?> json) => _$TableModelFromJson(json);
}
@JsonEnum(valueField: 'initial')
enum EXPRESS {
  GENERAL('G'),
  DIRECT('D');

  final String initial;
  const EXPRESS(this.initial);
}


