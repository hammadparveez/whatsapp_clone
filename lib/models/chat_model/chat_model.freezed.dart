// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
class _$ChatModelTearOff {
  const _$ChatModelTearOff();

  _ChatModel call(
      {required String userId,
      required String senderName,
      required String profileImage,
      required String msg,
      required String time,
      bool isPinned = false,
      bool isRead = true,
      bool isMute = false,
      bool isArchived = false}) {
    return _ChatModel(
      userId: userId,
      senderName: senderName,
      profileImage: profileImage,
      msg: msg,
      time: time,
      isPinned: isPinned,
      isRead: isRead,
      isMute: isMute,
      isArchived: isArchived,
    );
  }

  ChatModel fromJson(Map<String, Object?> json) {
    return ChatModel.fromJson(json);
  }
}

/// @nodoc
const $ChatModel = _$ChatModelTearOff();

/// @nodoc
mixin _$ChatModel {
  String get userId => throw _privateConstructorUsedError;
  String get senderName => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  bool get isPinned => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  bool get isMute => throw _privateConstructorUsedError;
  bool get isArchived => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      String senderName,
      String profileImage,
      String msg,
      String time,
      bool isPinned,
      bool isRead,
      bool isMute,
      bool isArchived});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res> implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  final ChatModel _value;
  // ignore: unused_field
  final $Res Function(ChatModel) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? senderName = freezed,
    Object? profileImage = freezed,
    Object? msg = freezed,
    Object? time = freezed,
    Object? isPinned = freezed,
    Object? isRead = freezed,
    Object? isMute = freezed,
    Object? isArchived = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: senderName == freezed
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isPinned: isPinned == freezed
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      isMute: isMute == freezed
          ? _value.isMute
          : isMute // ignore: cast_nullable_to_non_nullable
              as bool,
      isArchived: isArchived == freezed
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ChatModelCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$ChatModelCopyWith(
          _ChatModel value, $Res Function(_ChatModel) then) =
      __$ChatModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      String senderName,
      String profileImage,
      String msg,
      String time,
      bool isPinned,
      bool isRead,
      bool isMute,
      bool isArchived});
}

/// @nodoc
class __$ChatModelCopyWithImpl<$Res> extends _$ChatModelCopyWithImpl<$Res>
    implements _$ChatModelCopyWith<$Res> {
  __$ChatModelCopyWithImpl(_ChatModel _value, $Res Function(_ChatModel) _then)
      : super(_value, (v) => _then(v as _ChatModel));

  @override
  _ChatModel get _value => super._value as _ChatModel;

  @override
  $Res call({
    Object? userId = freezed,
    Object? senderName = freezed,
    Object? profileImage = freezed,
    Object? msg = freezed,
    Object? time = freezed,
    Object? isPinned = freezed,
    Object? isRead = freezed,
    Object? isMute = freezed,
    Object? isArchived = freezed,
  }) {
    return _then(_ChatModel(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: senderName == freezed
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isPinned: isPinned == freezed
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      isMute: isMute == freezed
          ? _value.isMute
          : isMute // ignore: cast_nullable_to_non_nullable
              as bool,
      isArchived: isArchived == freezed
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatModel extends _ChatModel with DiagnosticableTreeMixin {
  const _$_ChatModel(
      {required this.userId,
      required this.senderName,
      required this.profileImage,
      required this.msg,
      required this.time,
      this.isPinned = false,
      this.isRead = true,
      this.isMute = false,
      this.isArchived = false})
      : super._();

  factory _$_ChatModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatModelFromJson(json);

  @override
  final String userId;
  @override
  final String senderName;
  @override
  final String profileImage;
  @override
  final String msg;
  @override
  final String time;
  @JsonKey(defaultValue: false)
  @override
  final bool isPinned;
  @JsonKey(defaultValue: true)
  @override
  final bool isRead;
  @JsonKey(defaultValue: false)
  @override
  final bool isMute;
  @JsonKey(defaultValue: false)
  @override
  final bool isArchived;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatModel(userId: $userId, senderName: $senderName, profileImage: $profileImage, msg: $msg, time: $time, isPinned: $isPinned, isRead: $isRead, isMute: $isMute, isArchived: $isArchived)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatModel'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('senderName', senderName))
      ..add(DiagnosticsProperty('profileImage', profileImage))
      ..add(DiagnosticsProperty('msg', msg))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('isPinned', isPinned))
      ..add(DiagnosticsProperty('isRead', isRead))
      ..add(DiagnosticsProperty('isMute', isMute))
      ..add(DiagnosticsProperty('isArchived', isArchived));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.isMute, isMute) || other.isMute == isMute) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, senderName, profileImage,
      msg, time, isPinned, isRead, isMute, isArchived);

  @JsonKey(ignore: true)
  @override
  _$ChatModelCopyWith<_ChatModel> get copyWith =>
      __$ChatModelCopyWithImpl<_ChatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatModelToJson(this);
  }
}

abstract class _ChatModel extends ChatModel {
  const factory _ChatModel(
      {required String userId,
      required String senderName,
      required String profileImage,
      required String msg,
      required String time,
      bool isPinned,
      bool isRead,
      bool isMute,
      bool isArchived}) = _$_ChatModel;
  const _ChatModel._() : super._();

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$_ChatModel.fromJson;

  @override
  String get userId;
  @override
  String get senderName;
  @override
  String get profileImage;
  @override
  String get msg;
  @override
  String get time;
  @override
  bool get isPinned;
  @override
  bool get isRead;
  @override
  bool get isMute;
  @override
  bool get isArchived;
  @override
  @JsonKey(ignore: true)
  _$ChatModelCopyWith<_ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}
