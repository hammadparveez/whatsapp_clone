// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calls_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CallModel _$CallModelFromJson(Map<String, dynamic> json) {
  return _CallModel.fromJson(json);
}

/// @nodoc
class _$CallModelTearOff {
  const _$CallModelTearOff();

  _CallModel call(
      {required String name,
      required String time,
      required String profileImage,
      bool? isMissed,
      bool isVideo = false}) {
    return _CallModel(
      name: name,
      time: time,
      profileImage: profileImage,
      isMissed: isMissed,
      isVideo: isVideo,
    );
  }

  CallModel fromJson(Map<String, Object?> json) {
    return CallModel.fromJson(json);
  }
}

/// @nodoc
const $CallModel = _$CallModelTearOff();

/// @nodoc
mixin _$CallModel {
  String get name => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  bool? get isMissed => throw _privateConstructorUsedError;
  bool get isVideo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CallModelCopyWith<CallModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallModelCopyWith<$Res> {
  factory $CallModelCopyWith(CallModel value, $Res Function(CallModel) then) =
      _$CallModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String time,
      String profileImage,
      bool? isMissed,
      bool isVideo});
}

/// @nodoc
class _$CallModelCopyWithImpl<$Res> implements $CallModelCopyWith<$Res> {
  _$CallModelCopyWithImpl(this._value, this._then);

  final CallModel _value;
  // ignore: unused_field
  final $Res Function(CallModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? time = freezed,
    Object? profileImage = freezed,
    Object? isMissed = freezed,
    Object? isVideo = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      isMissed: isMissed == freezed
          ? _value.isMissed
          : isMissed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVideo: isVideo == freezed
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CallModelCopyWith<$Res> implements $CallModelCopyWith<$Res> {
  factory _$CallModelCopyWith(
          _CallModel value, $Res Function(_CallModel) then) =
      __$CallModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String time,
      String profileImage,
      bool? isMissed,
      bool isVideo});
}

/// @nodoc
class __$CallModelCopyWithImpl<$Res> extends _$CallModelCopyWithImpl<$Res>
    implements _$CallModelCopyWith<$Res> {
  __$CallModelCopyWithImpl(_CallModel _value, $Res Function(_CallModel) _then)
      : super(_value, (v) => _then(v as _CallModel));

  @override
  _CallModel get _value => super._value as _CallModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? time = freezed,
    Object? profileImage = freezed,
    Object? isMissed = freezed,
    Object? isVideo = freezed,
  }) {
    return _then(_CallModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      isMissed: isMissed == freezed
          ? _value.isMissed
          : isMissed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVideo: isVideo == freezed
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CallModel extends _CallModel {
  _$_CallModel(
      {required this.name,
      required this.time,
      required this.profileImage,
      this.isMissed,
      this.isVideo = false})
      : super._();

  factory _$_CallModel.fromJson(Map<String, dynamic> json) =>
      _$$_CallModelFromJson(json);

  @override
  final String name;
  @override
  final String time;
  @override
  final String profileImage;
  @override
  final bool? isMissed;
  @JsonKey(defaultValue: false)
  @override
  final bool isVideo;

  @override
  String toString() {
    return 'CallModel(name: $name, time: $time, profileImage: $profileImage, isMissed: $isMissed, isVideo: $isVideo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CallModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.isMissed, isMissed) ||
                other.isMissed == isMissed) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, time, profileImage, isMissed, isVideo);

  @JsonKey(ignore: true)
  @override
  _$CallModelCopyWith<_CallModel> get copyWith =>
      __$CallModelCopyWithImpl<_CallModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CallModelToJson(this);
  }
}

abstract class _CallModel extends CallModel {
  factory _CallModel(
      {required String name,
      required String time,
      required String profileImage,
      bool? isMissed,
      bool isVideo}) = _$_CallModel;
  _CallModel._() : super._();

  factory _CallModel.fromJson(Map<String, dynamic> json) =
      _$_CallModel.fromJson;

  @override
  String get name;
  @override
  String get time;
  @override
  String get profileImage;
  @override
  bool? get isMissed;
  @override
  bool get isVideo;
  @override
  @JsonKey(ignore: true)
  _$CallModelCopyWith<_CallModel> get copyWith =>
      throw _privateConstructorUsedError;
}
