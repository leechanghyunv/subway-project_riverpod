// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubRouteModel _$SubRouteModelFromJson(Map<String, dynamic> json) {
  return _SubRouteModel.fromJson(json);
}

/// @nodoc
mixin _$SubRouteModel {
  @HiveField(1)
  SubwayHiveModel get routeA => throw _privateConstructorUsedError;
  @HiveField(2)
  SubwayHiveModel get routeB => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubRouteModelCopyWith<SubRouteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubRouteModelCopyWith<$Res> {
  factory $SubRouteModelCopyWith(
          SubRouteModel value, $Res Function(SubRouteModel) then) =
      _$SubRouteModelCopyWithImpl<$Res, SubRouteModel>;
  @useResult
  $Res call(
      {@HiveField(1) SubwayHiveModel routeA,
      @HiveField(2) SubwayHiveModel routeB});

  $SubwayHiveModelCopyWith<$Res> get routeA;
  $SubwayHiveModelCopyWith<$Res> get routeB;
}

/// @nodoc
class _$SubRouteModelCopyWithImpl<$Res, $Val extends SubRouteModel>
    implements $SubRouteModelCopyWith<$Res> {
  _$SubRouteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeA = null,
    Object? routeB = null,
  }) {
    return _then(_value.copyWith(
      routeA: null == routeA
          ? _value.routeA
          : routeA // ignore: cast_nullable_to_non_nullable
              as SubwayHiveModel,
      routeB: null == routeB
          ? _value.routeB
          : routeB // ignore: cast_nullable_to_non_nullable
              as SubwayHiveModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubwayHiveModelCopyWith<$Res> get routeA {
    return $SubwayHiveModelCopyWith<$Res>(_value.routeA, (value) {
      return _then(_value.copyWith(routeA: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubwayHiveModelCopyWith<$Res> get routeB {
    return $SubwayHiveModelCopyWith<$Res>(_value.routeB, (value) {
      return _then(_value.copyWith(routeB: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SubRouteModelCopyWith<$Res>
    implements $SubRouteModelCopyWith<$Res> {
  factory _$$_SubRouteModelCopyWith(
          _$_SubRouteModel value, $Res Function(_$_SubRouteModel) then) =
      __$$_SubRouteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) SubwayHiveModel routeA,
      @HiveField(2) SubwayHiveModel routeB});

  @override
  $SubwayHiveModelCopyWith<$Res> get routeA;
  @override
  $SubwayHiveModelCopyWith<$Res> get routeB;
}

/// @nodoc
class __$$_SubRouteModelCopyWithImpl<$Res>
    extends _$SubRouteModelCopyWithImpl<$Res, _$_SubRouteModel>
    implements _$$_SubRouteModelCopyWith<$Res> {
  __$$_SubRouteModelCopyWithImpl(
      _$_SubRouteModel _value, $Res Function(_$_SubRouteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeA = null,
    Object? routeB = null,
  }) {
    return _then(_$_SubRouteModel(
      routeA: null == routeA
          ? _value.routeA
          : routeA // ignore: cast_nullable_to_non_nullable
              as SubwayHiveModel,
      routeB: null == routeB
          ? _value.routeB
          : routeB // ignore: cast_nullable_to_non_nullable
              as SubwayHiveModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3)
class _$_SubRouteModel implements _SubRouteModel {
  const _$_SubRouteModel(
      {@HiveField(1) required this.routeA, @HiveField(2) required this.routeB});

  factory _$_SubRouteModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubRouteModelFromJson(json);

  @override
  @HiveField(1)
  final SubwayHiveModel routeA;
  @override
  @HiveField(2)
  final SubwayHiveModel routeB;

  @override
  String toString() {
    return 'SubRouteModel(routeA: $routeA, routeB: $routeB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubRouteModel &&
            (identical(other.routeA, routeA) || other.routeA == routeA) &&
            (identical(other.routeB, routeB) || other.routeB == routeB));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, routeA, routeB);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubRouteModelCopyWith<_$_SubRouteModel> get copyWith =>
      __$$_SubRouteModelCopyWithImpl<_$_SubRouteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubRouteModelToJson(
      this,
    );
  }
}

abstract class _SubRouteModel implements SubRouteModel {
  const factory _SubRouteModel(
      {@HiveField(1) required final SubwayHiveModel routeA,
      @HiveField(2) required final SubwayHiveModel routeB}) = _$_SubRouteModel;

  factory _SubRouteModel.fromJson(Map<String, dynamic> json) =
      _$_SubRouteModel.fromJson;

  @override
  @HiveField(1)
  SubwayHiveModel get routeA;
  @override
  @HiveField(2)
  SubwayHiveModel get routeB;
  @override
  @JsonKey(ignore: true)
  _$$_SubRouteModelCopyWith<_$_SubRouteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
