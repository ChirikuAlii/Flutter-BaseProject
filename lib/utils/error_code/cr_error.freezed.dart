// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cr_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CRError {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of CRError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CRErrorCopyWith<CRError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CRErrorCopyWith<$Res> {
  factory $CRErrorCopyWith(CRError value, $Res Function(CRError) then) =
      _$CRErrorCopyWithImpl<$Res, CRError>;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class _$CRErrorCopyWithImpl<$Res, $Val extends CRError>
    implements $CRErrorCopyWith<$Res> {
  _$CRErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CRError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CRErrorImplCopyWith<$Res> implements $CRErrorCopyWith<$Res> {
  factory _$$CRErrorImplCopyWith(
          _$CRErrorImpl value, $Res Function(_$CRErrorImpl) then) =
      __$$CRErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$CRErrorImplCopyWithImpl<$Res>
    extends _$CRErrorCopyWithImpl<$Res, _$CRErrorImpl>
    implements _$$CRErrorImplCopyWith<$Res> {
  __$$CRErrorImplCopyWithImpl(
      _$CRErrorImpl _value, $Res Function(_$CRErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CRError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$CRErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CRErrorImpl implements _CRError {
  _$CRErrorImpl({required this.code, required this.message});

  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'CRError(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CRErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  /// Create a copy of CRError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CRErrorImplCopyWith<_$CRErrorImpl> get copyWith =>
      __$$CRErrorImplCopyWithImpl<_$CRErrorImpl>(this, _$identity);
}

abstract class _CRError implements CRError {
  factory _CRError(
      {required final String code,
      required final String message}) = _$CRErrorImpl;

  @override
  String get code;
  @override
  String get message;

  /// Create a copy of CRError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CRErrorImplCopyWith<_$CRErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
