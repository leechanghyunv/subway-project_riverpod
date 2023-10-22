// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arrival_filted_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FiltedArrivalModel _$$_FiltedArrivalModelFromJson(
        Map<String, dynamic> json) =>
    _$_FiltedArrivalModel(
      arrival: (json['arrival'] as List<dynamic>?)
          ?.map((e) => ArrivalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      upFirst: json['upFirst'] as String? ?? "정보없음",
      upLast: json['upLast'] as String? ?? "정보없음",
      downFirst: json['downFirst'] as String? ?? "정보없음",
      downLast: json['downLast'] as String? ?? "정보없음",
    );

Map<String, dynamic> _$$_FiltedArrivalModelToJson(
        _$_FiltedArrivalModel instance) =>
    <String, dynamic>{
      'arrival': instance.arrival,
      'upFirst': instance.upFirst,
      'upLast': instance.upLast,
      'downFirst': instance.downFirst,
      'downLast': instance.downLast,
    };
