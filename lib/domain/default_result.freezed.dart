// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DefaultResult _$DefaultResultFromJson(Map<String, dynamic> json) {
  return _DefaultResult.fromJson(json);
}

/// @nodoc
mixin _$DefaultResult {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;

  /// Serializes this DefaultResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DefaultResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultResultCopyWith<DefaultResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultResultCopyWith<$Res> {
  factory $DefaultResultCopyWith(
          DefaultResult value, $Res Function(DefaultResult) then) =
      _$DefaultResultCopyWithImpl<$Res, DefaultResult>;
  @useResult
  $Res call({String? message, bool? status});
}

/// @nodoc
class _$DefaultResultCopyWithImpl<$Res, $Val extends DefaultResult>
    implements $DefaultResultCopyWith<$Res> {
  _$DefaultResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefaultResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultResultImplCopyWith<$Res>
    implements $DefaultResultCopyWith<$Res> {
  factory _$$DefaultResultImplCopyWith(
          _$DefaultResultImpl value, $Res Function(_$DefaultResultImpl) then) =
      __$$DefaultResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? status});
}

/// @nodoc
class __$$DefaultResultImplCopyWithImpl<$Res>
    extends _$DefaultResultCopyWithImpl<$Res, _$DefaultResultImpl>
    implements _$$DefaultResultImplCopyWith<$Res> {
  __$$DefaultResultImplCopyWithImpl(
      _$DefaultResultImpl _value, $Res Function(_$DefaultResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of DefaultResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$DefaultResultImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultResultImpl implements _DefaultResult {
  _$DefaultResultImpl({this.message, this.status});

  factory _$DefaultResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultResultImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;

  @override
  String toString() {
    return 'DefaultResult(message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultResultImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  /// Create a copy of DefaultResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultResultImplCopyWith<_$DefaultResultImpl> get copyWith =>
      __$$DefaultResultImplCopyWithImpl<_$DefaultResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultResultImplToJson(
      this,
    );
  }
}

abstract class _DefaultResult implements DefaultResult {
  factory _DefaultResult({final String? message, final bool? status}) =
      _$DefaultResultImpl;

  factory _DefaultResult.fromJson(Map<String, dynamic> json) =
      _$DefaultResultImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;

  /// Create a copy of DefaultResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultResultImplCopyWith<_$DefaultResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
