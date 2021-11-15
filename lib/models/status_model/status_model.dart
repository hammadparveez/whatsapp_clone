import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_model.freezed.dart';
part 'status_model.g.dart';

@freezed
class StatusModel with _$StatusModel {
  const StatusModel._();
  const factory StatusModel({
    required int statusID,
    required  int totalStatusCount,
    required int seenStatusCount,
    required  String postedBy,
    required  String time,
  }) = _StatusModel;

  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      _$StatusModelFromJson(json);
}
