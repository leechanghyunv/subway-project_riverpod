// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubwayModel _$$_SubwayModelFromJson(Map<String, dynamic> json) =>
    _$_SubwayModel(
      subName: json['subName'] as String,
      engName: json['engName'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      lineUi: json['lineUi'] as String,
      subwayId: json['subwayId'] as int,
      line: json['line'] as String,
      heading: json['heading'] as String,
      isSelected: json['isSelected'] as bool? ?? false,
      km: json['km'] as num? ?? 0.0,
    );

Map<String, dynamic> _$$_SubwayModelToJson(_$_SubwayModel instance) =>
    <String, dynamic>{
      'subName': instance.subName,
      'engName': instance.engName,
      'lat': instance.lat,
      'lng': instance.lng,
      'lineUi': instance.lineUi,
      'subwayId': instance.subwayId,
      'line': instance.line,
      'heading': instance.heading,
      'isSelected': instance.isSelected,
      'km': instance.km,
    };
