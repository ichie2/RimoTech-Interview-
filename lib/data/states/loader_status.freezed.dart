// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loader_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoaderStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function() success,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoaderStatusLoading value) loading,
    required TResult Function(_LoaderStatusIdle value) idle,
    required TResult Function(_LoaderStatusSuccess value) success,
    required TResult Function(__LoaderStatusError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoaderStatusLoading value)? loading,
    TResult Function(_LoaderStatusIdle value)? idle,
    TResult Function(_LoaderStatusSuccess value)? success,
    TResult Function(__LoaderStatusError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoaderStatusLoading value)? loading,
    TResult Function(_LoaderStatusIdle value)? idle,
    TResult Function(_LoaderStatusSuccess value)? success,
    TResult Function(__LoaderStatusError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoaderStatusCopyWith<$Res> {
  factory $LoaderStatusCopyWith(
          LoaderStatus value, $Res Function(LoaderStatus) then) =
      _$LoaderStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoaderStatusCopyWithImpl<$Res> implements $LoaderStatusCopyWith<$Res> {
  _$LoaderStatusCopyWithImpl(this._value, this._then);

  final LoaderStatus _value;
  // ignore: unused_field
  final $Res Function(LoaderStatus) _then;
}

/// @nodoc
abstract class _$$_LoaderStatusLoadingCopyWith<$Res> {
  factory _$$_LoaderStatusLoadingCopyWith(_$_LoaderStatusLoading value,
          $Res Function(_$_LoaderStatusLoading) then) =
      __$$_LoaderStatusLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoaderStatusLoadingCopyWithImpl<$Res>
    extends _$LoaderStatusCopyWithImpl<$Res>
    implements _$$_LoaderStatusLoadingCopyWith<$Res> {
  __$$_LoaderStatusLoadingCopyWithImpl(_$_LoaderStatusLoading _value,
      $Res Function(_$_LoaderStatusLoading) _then)
      : super(_value, (v) => _then(v as _$_LoaderStatusLoading));

  @override
  _$_LoaderStatusLoading get _value => super._value as _$_LoaderStatusLoading;
}

/// @nodoc

class _$_LoaderStatusLoading implements _LoaderStatusLoading {
  const _$_LoaderStatusLoading();

  @override
  String toString() {
    return 'LoaderStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoaderStatusLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function() success,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoaderStatusLoading value) loading,
    required TResult Function(_LoaderStatusIdle value) idle,
    required TResult Function(_LoaderStatusSuccess value) success,
    required TResult Function(__LoaderStatusError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoaderStatusLoading value)? loading,
    TResult Function(_LoaderStatusIdle value)? idle,
    TResult Function(_LoaderStatusSuccess value)? success,
    TResult Function(__LoaderStatusError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoaderStatusLoading value)? loading,
    TResult Function(_LoaderStatusIdle value)? idle,
    TResult Function(_LoaderStatusSuccess value)? success,
    TResult Function(__LoaderStatusError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoaderStatusLoading implements LoaderStatus {
  const factory _LoaderStatusLoading() = _$_LoaderStatusLoading;
}

/// @nodoc
abstract class _$$_LoaderStatusIdleCopyWith<$Res> {
  factory _$$_LoaderStatusIdleCopyWith(
          _$_LoaderStatusIdle value, $Res Function(_$_LoaderStatusIdle) then) =
      __$$_LoaderStatusIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoaderStatusIdleCopyWithImpl<$Res>
    extends _$LoaderStatusCopyWithImpl<$Res>
    implements _$$_LoaderStatusIdleCopyWith<$Res> {
  __$$_LoaderStatusIdleCopyWithImpl(
      _$_LoaderStatusIdle _value, $Res Function(_$_LoaderStatusIdle) _then)
      : super(_value, (v) => _then(v as _$_LoaderStatusIdle));

  @override
  _$_LoaderStatusIdle get _value => super._value as _$_LoaderStatusIdle;
}

/// @nodoc

class _$_LoaderStatusIdle implements _LoaderStatusIdle {
  const _$_LoaderStatusIdle();

  @override
  String toString() {
    return 'LoaderStatus.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoaderStatusIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function() success,
    required TResult Function(String? error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(String? error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoaderStatusLoading value) loading,
    required TResult Function(_LoaderStatusIdle value) idle,
    required TResult Function(_LoaderStatusSuccess value) success,
    required TResult Function(__LoaderStatusError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoaderStatusLoading value)? loading,
    TResult Function(_LoaderStatusIdle value)? idle,
    TResult Function(_LoaderStatusSuccess value)? success,
    TResult Function(__LoaderStatusError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoaderStatusLoading value)? loading,
    TResult Function(_LoaderStatusIdle value)? idle,
    TResult Function(_LoaderStatusSuccess value)? success,
    TResult Function(__LoaderStatusError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _LoaderStatusIdle implements LoaderStatus {
  const factory _LoaderStatusIdle() = _$_LoaderStatusIdle;
}

/// @nodoc
abstract class _$$_LoaderStatusSuccessCopyWith<$Res> {
  factory _$$_LoaderStatusSuccessCopyWith(_$_LoaderStatusSuccess value,
          $Res Function(_$_LoaderStatusSuccess) then) =
      __$$_LoaderStatusSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoaderStatusSuccessCopyWithImpl<$Res>
    extends _$LoaderStatusCopyWithImpl<$Res>
    implements _$$_LoaderStatusSuccessCopyWith<$Res> {
  __$$_LoaderStatusSuccessCopyWithImpl(_$_LoaderStatusSuccess _value,
      $Res Function(_$_LoaderStatusSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoaderStatusSuccess));

  @override
  _$_LoaderStatusSuccess get _value => super._value as _$_LoaderStatusSuccess;
}

/// @nodoc

class _$_LoaderStatusSuccess implements _LoaderStatusSuccess {
  const _$_LoaderStatusSuccess();

  @override
  String toString() {
    return 'LoaderStatus.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoaderStatusSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function() success,
    required TResult Function(String? error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(String? error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoaderStatusLoading value) loading,
    required TResult Function(_LoaderStatusIdle value) idle,
    required TResult Function(_LoaderStatusSuccess value) success,
    required TResult Function(__LoaderStatusError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoaderStatusLoading value)? loading,
    TResult Function(_LoaderStatusIdle value)? idle,
    TResult Function(_LoaderStatusSuccess value)? success,
    TResult Function(__LoaderStatusError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoaderStatusLoading value)? loading,
    TResult Function(_LoaderStatusIdle value)? idle,
    TResult Function(_LoaderStatusSuccess value)? success,
    TResult Function(__LoaderStatusError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoaderStatusSuccess implements LoaderStatus {
  const factory _LoaderStatusSuccess() = _$_LoaderStatusSuccess;
}

/// @nodoc
abstract class _$$__LoaderStatusErrorCopyWith<$Res> {
  factory _$$__LoaderStatusErrorCopyWith(_$__LoaderStatusError value,
          $Res Function(_$__LoaderStatusError) then) =
      __$$__LoaderStatusErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$$__LoaderStatusErrorCopyWithImpl<$Res>
    extends _$LoaderStatusCopyWithImpl<$Res>
    implements _$$__LoaderStatusErrorCopyWith<$Res> {
  __$$__LoaderStatusErrorCopyWithImpl(
      _$__LoaderStatusError _value, $Res Function(_$__LoaderStatusError) _then)
      : super(_value, (v) => _then(v as _$__LoaderStatusError));

  @override
  _$__LoaderStatusError get _value => super._value as _$__LoaderStatusError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$__LoaderStatusError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$__LoaderStatusError implements __LoaderStatusError {
  const _$__LoaderStatusError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'LoaderStatus.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__LoaderStatusError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$__LoaderStatusErrorCopyWith<_$__LoaderStatusError> get copyWith =>
      __$$__LoaderStatusErrorCopyWithImpl<_$__LoaderStatusError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function() success,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoaderStatusLoading value) loading,
    required TResult Function(_LoaderStatusIdle value) idle,
    required TResult Function(_LoaderStatusSuccess value) success,
    required TResult Function(__LoaderStatusError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoaderStatusLoading value)? loading,
    TResult Function(_LoaderStatusIdle value)? idle,
    TResult Function(_LoaderStatusSuccess value)? success,
    TResult Function(__LoaderStatusError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoaderStatusLoading value)? loading,
    TResult Function(_LoaderStatusIdle value)? idle,
    TResult Function(_LoaderStatusSuccess value)? success,
    TResult Function(__LoaderStatusError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class __LoaderStatusError implements LoaderStatus {
  const factory __LoaderStatusError([final String? error]) =
      _$__LoaderStatusError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$__LoaderStatusErrorCopyWith<_$__LoaderStatusError> get copyWith =>
      throw _privateConstructorUsedError;
}
