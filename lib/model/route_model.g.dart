// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubRouteModelAdapter extends TypeAdapter<_$_SubRouteModel> {
  @override
  final int typeId = 3;

  @override
  _$_SubRouteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SubRouteModel(
      routeA: fields[1] as SubwayHiveModel,
      routeB: fields[2] as SubwayHiveModel,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SubRouteModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.routeA)
      ..writeByte(2)
      ..write(obj.routeB);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubRouteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubRouteModel _$$_SubRouteModelFromJson(Map<String, dynamic> json) =>
    _$_SubRouteModel(
      routeA: SubwayHiveModel.fromJson(json['routeA'] as Map<String, dynamic>),
      routeB: SubwayHiveModel.fromJson(json['routeB'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SubRouteModelToJson(_$_SubRouteModel instance) =>
    <String, dynamic>{
      'routeA': instance.routeA,
      'routeB': instance.routeB,
    };
