import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_result.freezed.dart';
part 'default_result.g.dart';

@freezed
class DefaultResult with _$DefaultResult {
  factory DefaultResult({
    String? message,
    bool? status,
  }) = _DefaultResult;

  factory DefaultResult.fromJson(Map<String, dynamic> json) =>
      _$DefaultResultFromJson(json);
}
