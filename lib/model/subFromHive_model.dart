import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'subFromHive_model.freezed.dart';
part 'subFromHive_model.g.dart';

@freezed
class SubwayHiveModel with _$SubwayHiveModel {
  @HiveType(typeId: 2)
  const factory SubwayHiveModel({
    @HiveField(1)
    required String subName,
    @HiveField(2)
    required String engName,
    @HiveField(3)
    required double lat,
    @HiveField(4)
    required double lng,
    @HiveField(5)
    required String lineUi,
    @HiveField(6)
    required int subwayId,
    @HiveField(7)
    required String line,
    @HiveField(8)
    required String heading,
    @HiveField(9)
    @Default("정보없음") String? code,
  }) = _SubwayHiveModel;



  factory SubwayHiveModel.fromJson(Map<String, dynamic> json) =>
      _$SubwayHiveModelFromJson(json);
}

