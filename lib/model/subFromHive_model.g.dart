// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subFromHive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubwayHiveModelAdapter extends TypeAdapter<_$_SubwayHiveModel> {
  @override
  final int typeId = 2;

  @override
  _$_SubwayHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SubwayHiveModel(
      subName: fields[1] as String,
      engName: fields[2] as String,
      lat: fields[3] as double,
      lng: fields[4] as double,
      lineUi: fields[5] as String,
      subwayId: fields[6] as int,
      line: fields[7] as String,
      heading: fields[8] as String,
      code: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SubwayHiveModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(1)
      ..write(obj.subName)
      ..writeByte(2)
      ..write(obj.engName)
      ..writeByte(3)
      ..write(obj.lat)
      ..writeByte(4)
      ..write(obj.lng)
      ..writeByte(5)
      ..write(obj.lineUi)
      ..writeByte(6)
      ..write(obj.subwayId)
      ..writeByte(7)
      ..write(obj.line)
      ..writeByte(8)
      ..write(obj.heading)
      ..writeByte(9)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubwayHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubwayHiveModel _$$_SubwayHiveModelFromJson(Map<String, dynamic> json) =>
    _$_SubwayHiveModel(
      subName: json['subName'] as String,
      engName: json['engName'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      lineUi: json['lineUi'] as String,
      subwayId: json['subwayId'] as int,
      line: json['line'] as String,
      heading: json['heading'] as String,
      code: json['code'] as String? ?? "정보없음",
    );

Map<String, dynamic> _$$_SubwayHiveModelToJson(_$_SubwayHiveModel instance) =>
    <String, dynamic>{
      'subName': instance.subName,
      'engName': instance.engName,
      'lat': instance.lat,
      'lng': instance.lng,
      'lineUi': instance.lineUi,
      'subwayId': instance.subwayId,
      'line': instance.line,
      'heading': instance.heading,
      'code': instance.code,
    };
