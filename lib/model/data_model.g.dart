// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubwayModel _$$_SubwayModelFromJson(Map<String, dynamic> json) =>
    _$_SubwayModel(
      subName: json['subname'] as String,
      engName: json['engname'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      lineUi: json['line_ui'] as String,
      subwayId: json['subwayid'] as int,
      line: json['line'] as String,
      heading: json['heading'] as String,
      isSelected: json['isSelected'] as bool? ?? false,
      km: json['km'] as num? ?? 0.0,
    );

Map<String, dynamic> _$$_SubwayModelToJson(_$_SubwayModel instance) =>
    <String, dynamic>{
      'subname': instance.subName,
      'engname': instance.engName,
      'lat': instance.lat,
      'lng': instance.lng,
      'line_ui': instance.lineUi,
      'subwayid': instance.subwayId,
      'line': instance.line,
      'heading': instance.heading,
      'isSelected': instance.isSelected,
      'km': instance.km,
    };
