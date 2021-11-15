// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusModel _$StatusModelFromJson(Map<String, dynamic> json) {
  return _StatusModel.fromJson(json);
}

/// @nodoc
class _$StatusModelTearOff {
  const _$StatusModelTearOff();

  _StatusModel call(
      {required int statusID,
      required int totalStatusCount,
      required int seenStatusCount,
      required String postedBy,
      required String time}) {
    return _StatusModel(
      statusID: statusID,
      totalStatusCount: totalStatusCount,
      seenStatusCount: seenStatusCount,
      postedBy: postedBy,
      time: time,
    );
  }

  StatusModel fromJson(Map<String, Object?> json) {
    return StatusModel.fromJson(json);
  }
}

/// @nodoc
const $StatusModel = _$StatusModelTearOff();

/// @nodoc
mixin _$StatusModel {
  int get statusID => throw _privateConstructorUsedError;
  int get totalStatusCount => throw _privateConstructorUsedError;
  int get seenStatusCount => throw _privateConstructorUsedError;
  String get postedBy => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusModelCopyWith<StatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusModelCopyWith<$Res> {
  factory $StatusModelCopyWith(
          StatusModel value, $Res Function(StatusModel) then) =
      _$StatusModelCopyWithImpl<$Res>;
  $Res call(
      {int statusID,
      int totalStatusCount,
      int seenStatusCount,
      String postedBy,
      String time});
}

/// @nodoc
class _$StatusModelCopyWithImpl<$Res> implements $StatusModelCopyWith<$Res> {
  _$StatusModelCopyWithImpl(this._value, this._then);

  final StatusModel _value;
  // ignore: unused_field
  final $Res Function(StatusModel) _then;

  @override
  $Res call({
    Object? statusID = freezed,
    Object? totalStatusCount = freezed,
    Object? seenStatusCount = freezed,
    Object? postedBy = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      statusID: statusID == freezed
          ? _value.statusID
          : statusID // ignore: cast_nullable_to_non_nullable
              as int,
      totalStatusCount: totalStatusCount == freezed
          ? _value.totalStatusCount
          : totalStatusCount // ignore: cast_nullable_to_non_nullable
              as int,
      seenStatusCount: seenStatusCount == freezed
          ? _value.seenStatusCount
          : seenStatusCount // ignore: cast_nullable_to_non_nullable
              as int,
      postedBy: postedBy == freezed
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StatusModelCopyWith<$Res>
    implements $StatusModelCopyWith<$Res> {
  factory _$StatusModelCopyWith(
          _StatusModel value, $Res Function(_StatusModel) then) =
      __$StatusModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int statusID,
      int totalStatusCount,
      int seenStatusCount,
      String postedBy,
      String time});
}

/// @nodoc
class __$StatusModelCopyWithImpl<$Res> extends _$StatusModelCopyWithImpl<$Res>
    implements _$StatusModelCopyWith<$Res> {
  __$StatusModelCopyWithImpl(
      _StatusModel _value, $Res Function(_StatusModel) _then)
      : super(_value, (v) => _then(v as _StatusModel));

  @override
  _StatusModel get _value => super._value as _StatusModel;

  @override
  $Res call({
    Object? statusID = freezed,
    Object? totalStatusCount = freezed,
    Object? seenStatusCount = freezed,
    Object? postedBy = freezed,
    Object? time = freezed,
  }) {
    return _then(_StatusModel(
      statusID: statusID == freezed
          ? _value.statusID
          : statusID // ignore: cast_nullable_to_non_nullable
              as int,
      totalStatusCount: totalStatusCount == freezed
          ? _value.totalStatusCount
          : totalStatusCount // ignore: cast_nullable_to_non_nullable
              as int,
      seenStatusCount: seenStatusCount == freezed
          ? _value.seenStatusCount
          : seenStatusCount // ignore: cast_nullable_to_non_nullable
              as int,
      postedBy: postedBy == freezed
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusModel extends _StatusModel {
  const _$_StatusModel(
      {required this.statusID,
      required this.totalStatusCount,
      required this.seenStatusCount,
      required this.postedBy,
      required this.time})
      : super._();

  factory _$_StatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_StatusModelFromJson(json);

  @override
  final int statusID;
  @override
  final int totalStatusCount;
  @override
  final int seenStatusCount;
  @override
  final String postedBy;
  @override
  final String time;

  @override
  String toString() {
    return 'StatusModel(statusID: $statusID, totalStatusCount: $totalStatusCount, seenStatusCount: $seenStatusCount, postedBy: $postedBy, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusModel &&
            (identical(other.statusID, statusID) ||
                other.statusID == statusID) &&
            (identical(other.totalStatusCount, totalStatusCount) ||
                other.totalStatusCount == totalStatusCount) &&
            (identical(other.seenStatusCount, seenStatusCount) ||
                other.seenStatusCount == seenStatusCount) &&
            (identical(other.postedBy, postedBy) ||
                other.postedBy == postedBy) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusID, totalStatusCount, seenStatusCount, postedBy, time);

  @JsonKey(ignore: true)
  @override
  _$StatusModelCopyWith<_StatusModel> get copyWith =>
      __$StatusModelCopyWithImpl<_StatusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusModelToJson(this);
  }
}

abstract class _StatusModel extends StatusModel {
  const factory _StatusModel(
      {required int statusID,
      required int totalStatusCount,
      required int seenStatusCount,
      required String postedBy,
      required String time}) = _$_StatusModel;
  const _StatusModel._() : super._();

  factory _StatusModel.fromJson(Map<String, dynamic> json) =
      _$_StatusModel.fromJson;

  @override
  int get statusID;
  @override
  int get totalStatusCount;
  @override
  int get seenStatusCount;
  @override
  String get postedBy;
  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$StatusModelCopyWith<_StatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
