// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableModel _$TableModelFromJson(Map<String, dynamic> json) {
  return _TableModel.fromJson(json);
}

/// @nodoc
mixin _$TableModel {
  @JsonKey(name: 'STATION_CD')
  String get stationCd => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATION_NM')
  String get stationNm => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARRIVETIME')
  String get arriveTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'ORIGINSTATION')
  String get originStation => throw _privateConstructorUsedError;
  @JsonKey(name: 'SUBWAYSNAME')
  String get sName => throw _privateConstructorUsedError;
  @JsonKey(name: 'SUBWAYENAME')
  String get eName => throw _privateConstructorUsedError;
  @JsonKey(name: 'EXPRESS_YN')
  EXPRESS get express => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableModelCopyWith<TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableModelCopyWith<$Res> {
  factory $TableModelCopyWith(
          TableModel value, $Res Function(TableModel) then) =
      _$TableModelCopyWithImpl<$Res, TableModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'STATION_CD') String stationCd,
      @JsonKey(name: 'STATION_NM') String stationNm,
      @JsonKey(name: 'ARRIVETIME') String arriveTime,
      @JsonKey(name: 'ORIGINSTATION') String originStation,
      @JsonKey(name: 'SUBWAYSNAME') String sName,
      @JsonKey(name: 'SUBWAYENAME') String eName,
      @JsonKey(name: 'EXPRESS_YN') EXPRESS express});
}

/// @nodoc
class _$TableModelCopyWithImpl<$Res, $Val extends TableModel>
    implements $TableModelCopyWith<$Res> {
  _$TableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationCd = null,
    Object? stationNm = null,
    Object? arriveTime = null,
    Object? originStation = null,
    Object? sName = null,
    Object? eName = null,
    Object? express = null,
  }) {
    return _then(_value.copyWith(
      stationCd: null == stationCd
          ? _value.stationCd
          : stationCd // ignore: cast_nullable_to_non_nullable
              as String,
      stationNm: null == stationNm
          ? _value.stationNm
          : stationNm // ignore: cast_nullable_to_non_nullable
              as String,
      arriveTime: null == arriveTime
          ? _value.arriveTime
          : arriveTime // ignore: cast_nullable_to_non_nullable
              as String,
      originStation: null == originStation
          ? _value.originStation
          : originStation // ignore: cast_nullable_to_non_nullable
              as String,
      sName: null == sName
          ? _value.sName
          : sName // ignore: cast_nullable_to_non_nullable
              as String,
      eName: null == eName
          ? _value.eName
          : eName // ignore: cast_nullable_to_non_nullable
              as String,
      express: null == express
          ? _value.express
          : express // ignore: cast_nullable_to_non_nullable
              as EXPRESS,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableModelCopyWith<$Res>
    implements $TableModelCopyWith<$Res> {
  factory _$$_TableModelCopyWith(
          _$_TableModel value, $Res Function(_$_TableModel) then) =
      __$$_TableModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'STATION_CD') String stationCd,
      @JsonKey(name: 'STATION_NM') String stationNm,
      @JsonKey(name: 'ARRIVETIME') String arriveTime,
      @JsonKey(name: 'ORIGINSTATION') String originStation,
      @JsonKey(name: 'SUBWAYSNAME') String sName,
      @JsonKey(name: 'SUBWAYENAME') String eName,
      @JsonKey(name: 'EXPRESS_YN') EXPRESS express});
}

/// @nodoc
class __$$_TableModelCopyWithImpl<$Res>
    extends _$TableModelCopyWithImpl<$Res, _$_TableModel>
    implements _$$_TableModelCopyWith<$Res> {
  __$$_TableModelCopyWithImpl(
      _$_TableModel _value, $Res Function(_$_TableModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationCd = null,
    Object? stationNm = null,
    Object? arriveTime = null,
    Object? originStation = null,
    Object? sName = null,
    Object? eName = null,
    Object? express = null,
  }) {
    return _then(_$_TableModel(
      stationCd: null == stationCd
          ? _value.stationCd
          : stationCd // ignore: cast_nullable_to_non_nullable
              as String,
      stationNm: null == stationNm
          ? _value.stationNm
          : stationNm // ignore: cast_nullable_to_non_nullable
              as String,
      arriveTime: null == arriveTime
          ? _value.arriveTime
          : arriveTime // ignore: cast_nullable_to_non_nullable
              as String,
      originStation: null == originStation
          ? _value.originStation
          : originStation // ignore: cast_nullable_to_non_nullable
              as String,
      sName: null == sName
          ? _value.sName
          : sName // ignore: cast_nullable_to_non_nullable
              as String,
      eName: null == eName
          ? _value.eName
          : eName // ignore: cast_nullable_to_non_nullable
              as String,
      express: null == express
          ? _value.express
          : express // ignore: cast_nullable_to_non_nullable
              as EXPRESS,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TableModel implements _TableModel {
  const _$_TableModel(
      {@JsonKey(name: 'STATION_CD') this.stationCd = "정보없음",
      @JsonKey(name: 'STATION_NM') this.stationNm = "정보없음",
      @JsonKey(name: 'ARRIVETIME') this.arriveTime = "정보없음",
      @JsonKey(name: 'ORIGINSTATION') this.originStation = "정보없음",
      @JsonKey(name: 'SUBWAYSNAME') this.sName = "정보없음",
      @JsonKey(name: 'SUBWAYENAME') this.eName = "정보없음",
      @JsonKey(name: 'EXPRESS_YN') this.express = EXPRESS.GENERAL});

  factory _$_TableModel.fromJson(Map<String, dynamic> json) =>
      _$$_TableModelFromJson(json);

  @override
  @JsonKey(name: 'STATION_CD')
  final String stationCd;
  @override
  @JsonKey(name: 'STATION_NM')
  final String stationNm;
  @override
  @JsonKey(name: 'ARRIVETIME')
  final String arriveTime;
  @override
  @JsonKey(name: 'ORIGINSTATION')
  final String originStation;
  @override
  @JsonKey(name: 'SUBWAYSNAME')
  final String sName;
  @override
  @JsonKey(name: 'SUBWAYENAME')
  final String eName;
  @override
  @JsonKey(name: 'EXPRESS_YN')
  final EXPRESS express;

  @override
  String toString() {
    return 'TableModel(stationCd: $stationCd, stationNm: $stationNm, arriveTime: $arriveTime, originStation: $originStation, sName: $sName, eName: $eName, express: $express)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableModel &&
            (identical(other.stationCd, stationCd) ||
                other.stationCd == stationCd) &&
            (identical(other.stationNm, stationNm) ||
                other.stationNm == stationNm) &&
            (identical(other.arriveTime, arriveTime) ||
                other.arriveTime == arriveTime) &&
            (identical(other.originStation, originStation) ||
                other.originStation == originStation) &&
            (identical(other.sName, sName) || other.sName == sName) &&
            (identical(other.eName, eName) || other.eName == eName) &&
            (identical(other.express, express) || other.express == express));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stationCd, stationNm, arriveTime,
      originStation, sName, eName, express);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableModelCopyWith<_$_TableModel> get copyWith =>
      __$$_TableModelCopyWithImpl<_$_TableModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableModelToJson(
      this,
    );
  }
}

abstract class _TableModel implements TableModel {
  const factory _TableModel(
      {@JsonKey(name: 'STATION_CD') final String stationCd,
      @JsonKey(name: 'STATION_NM') final String stationNm,
      @JsonKey(name: 'ARRIVETIME') final String arriveTime,
      @JsonKey(name: 'ORIGINSTATION') final String originStation,
      @JsonKey(name: 'SUBWAYSNAME') final String sName,
      @JsonKey(name: 'SUBWAYENAME') final String eName,
      @JsonKey(name: 'EXPRESS_YN') final EXPRESS express}) = _$_TableModel;

  factory _TableModel.fromJson(Map<String, dynamic> json) =
      _$_TableModel.fromJson;

  @override
  @JsonKey(name: 'STATION_CD')
  String get stationCd;
  @override
  @JsonKey(name: 'STATION_NM')
  String get stationNm;
  @override
  @JsonKey(name: 'ARRIVETIME')
  String get arriveTime;
  @override
  @JsonKey(name: 'ORIGINSTATION')
  String get originStation;
  @override
  @JsonKey(name: 'SUBWAYSNAME')
  String get sName;
  @override
  @JsonKey(name: 'SUBWAYENAME')
  String get eName;
  @override
  @JsonKey(name: 'EXPRESS_YN')
  EXPRESS get express;
  @override
  @JsonKey(ignore: true)
  _$$_TableModelCopyWith<_$_TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}
