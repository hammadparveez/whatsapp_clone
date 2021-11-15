import 'package:freezed_annotation/freezed_annotation.dart';

part 'calls_model.freezed.dart';
part 'calls_model.g.dart';

@freezed

class CallModel with _$CallModel {
  const CallModel._();
   factory CallModel({
    required String name,
    required String time,
    required String profileImage,
    bool? isMissed,
    @Default(false) bool isVideo
    
  }) = _CallModel;

  factory CallModel.fromJson(Map<String,dynamic> json) => _$CallModelFromJson(json);
}
