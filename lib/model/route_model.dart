// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

// Project imports:
import 'package:subway_project_230704/model/data_model.dart';
import 'package:subway_project_230704/model/subFromHive_model.dart';

part 'route_model.freezed.dart';
part 'route_model.g.dart';

@freezed
class SubRouteModel with _$SubRouteModel {
  @HiveType(typeId: 3)
  const factory SubRouteModel({
    @HiveField(1)
    required SubwayHiveModel routeA,
    @HiveField(2)
    required SubwayHiveModel routeB,
  }) = _SubRouteModel;

  factory SubRouteModel.fromJson(Map<String, dynamic> json) =>
      _$SubRouteModelFromJson(json);
}
