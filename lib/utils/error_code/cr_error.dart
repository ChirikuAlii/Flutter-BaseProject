import 'package:freezed_annotation/freezed_annotation.dart';

part 'cr_error.freezed.dart';

@Freezed(toJson: false, fromJson: false)
class CRError with _$CRError {
  factory CRError({
    required String code,
    required String message,
  }) = _CRError;
}
