// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arrival_filted_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FiltedArrivalModel _$FiltedArrivalModelFromJson(Map<String, dynamic> json) {
  return _FiltedArrivalModel.fromJson(json);
}

/// @nodoc
mixin _$FiltedArrivalModel {
  List<ArrivalModel>? get arrival => throw _privateConstructorUsedError;
  String? get upFirst => throw _privateConstructorUsedError;
  String? get upLast => throw _privateConstructorUsedError;
  String? get downFirst => throw _privateConstructorUsedError;
  String? get downLast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FiltedArrivalModelCopyWith<FiltedArrivalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltedArrivalModelCopyWith<$Res> {
  factory $FiltedArrivalModelCopyWith(
          FiltedArrivalModel value, $Res Function(FiltedArrivalModel) then) =
      _$FiltedArrivalModelCopyWithImpl<$Res, FiltedArrivalModel>;
  @useResult
  $Res call(
      {List<ArrivalModel>? arrival,
      String? upFirst,
      String? upLast,
      String? downFirst,
      String? downLast});
}

/// @nodoc
class _$FiltedArrivalModelCopyWithImpl<$Res, $Val extends FiltedArrivalModel>
    implements $FiltedArrivalModelCopyWith<$Res> {
  _$FiltedArrivalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrival = freezed,
    Object? upFirst = freezed,
    Object? upLast = freezed,
    Object? downFirst = freezed,
    Object? downLast = freezed,
  }) {
    return _then(_value.copyWith(
      arrival: freezed == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as List<ArrivalModel>?,
      upFirst: freezed == upFirst
          ? _value.upFirst
          : upFirst // ignore: cast_nullable_to_non_nullable
              as String?,
      upLast: freezed == upLast
          ? _value.upLast
          : upLast // ignore: cast_nullable_to_non_nullable
              as String?,
      downFirst: freezed == downFirst
          ? _value.downFirst
          : downFirst // ignore: cast_nullable_to_non_nullable
              as String?,
      downLast: freezed == downLast
          ? _value.downLast
          : downLast // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FiltedArrivalModelCopyWith<$Res>
    implements $FiltedArrivalModelCopyWith<$Res> {
  factory _$$_FiltedArrivalModelCopyWith(_$_FiltedArrivalModel value,
          $Res Function(_$_FiltedArrivalModel) then) =
      __$$_FiltedArrivalModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ArrivalModel>? arrival,
      String? upFirst,
      String? upLast,
      String? downFirst,
      String? downLast});
}

/// @nodoc
class __$$_FiltedArrivalModelCopyWithImpl<$Res>
    extends _$FiltedArrivalModelCopyWithImpl<$Res, _$_FiltedArrivalModel>
    implements _$$_FiltedArrivalModelCopyWith<$Res> {
  __$$_FiltedArrivalModelCopyWithImpl(
      _$_FiltedArrivalModel _value, $Res Function(_$_FiltedArrivalModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrival = freezed,
    Object? upFirst = freezed,
    Object? upLast = freezed,
    Object? downFirst = freezed,
    Object? downLast = freezed,
  }) {
    return _then(_$_FiltedArrivalModel(
      arrival: freezed == arrival
          ? _value._arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as List<ArrivalModel>?,
      upFirst: freezed == upFirst
          ? _value.upFirst
          : upFirst // ignore: cast_nullable_to_non_nullable
              as String?,
      upLast: freezed == upLast
          ? _value.upLast
          : upLast // ignore: cast_nullable_to_non_nullable
              as String?,
      downFirst: freezed == downFirst
          ? _value.downFirst
          : downFirst // ignore: cast_nullable_to_non_nullable
              as String?,
      downLast: freezed == downLast
          ? _value.downLast
          : downLast // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FiltedArrivalModel implements _FiltedArrivalModel {
  const _$_FiltedArrivalModel(
      {final List<ArrivalModel>? arrival,
      this.upFirst = "정보없음",
      this.upLast = "정보없음",
      this.downFirst = "정보없음",
      this.downLast = "정보없음"})
      : _arrival = arrival;

  factory _$_FiltedArrivalModel.fromJson(Map<String, dynamic> json) =>
      _$$_FiltedArrivalModelFromJson(json);

  final List<ArrivalModel>? _arrival;
  @override
  List<ArrivalModel>? get arrival {
    final value = _arrival;
    if (value == null) return null;
    if (_arrival is EqualUnmodifiableListView) return _arrival;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? upFirst;
  @override
  @JsonKey()
  final String? upLast;
  @override
  @JsonKey()
  final String? downFirst;
  @override
  @JsonKey()
  final String? downLast;

  @override
  String toString() {
    return 'FiltedArrivalModel(arrival: $arrival, upFirst: $upFirst, upLast: $upLast, downFirst: $downFirst, downLast: $downLast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FiltedArrivalModel &&
            const DeepCollectionEquality().equals(other._arrival, _arrival) &&
            (identical(other.upFirst, upFirst) || other.upFirst == upFirst) &&
            (identical(other.upLast, upLast) || other.upLast == upLast) &&
            (identical(other.downFirst, downFirst) ||
                other.downFirst == downFirst) &&
            (identical(other.downLast, downLast) ||
                other.downLast == downLast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_arrival),
      upFirst,
      upLast,
      downFirst,
      downLast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FiltedArrivalModelCopyWith<_$_FiltedArrivalModel> get copyWith =>
      __$$_FiltedArrivalModelCopyWithImpl<_$_FiltedArrivalModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FiltedArrivalModelToJson(
      this,
    );
  }
}

abstract class _FiltedArrivalModel implements FiltedArrivalModel {
  const factory _FiltedArrivalModel(
      {final List<ArrivalModel>? arrival,
      final String? upFirst,
      final String? upLast,
      final String? downFirst,
      final String? downLast}) = _$_FiltedArrivalModel;

  factory _FiltedArrivalModel.fromJson(Map<String, dynamic> json) =
      _$_FiltedArrivalModel.fromJson;

  @override
  List<ArrivalModel>? get arrival;
  @override
  String? get upFirst;
  @override
  String? get upLast;
  @override
  String? get downFirst;
  @override
  String? get downLast;
  @override
  @JsonKey(ignore: true)
  _$$_FiltedArrivalModelCopyWith<_$_FiltedArrivalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
