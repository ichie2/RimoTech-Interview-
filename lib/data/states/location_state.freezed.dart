// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(LatLng location) success,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(LatLng location)? success,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(LatLng location)? success,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationStatusLoading value) loading,
    required TResult Function(_LocationStatusIdle value) idle,
    required TResult Function(_LocatiorStatusSuccess value) success,
    required TResult Function(__LocationStatusError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationStatusLoading value)? loading,
    TResult Function(_LocationStatusIdle value)? idle,
    TResult Function(_LocatiorStatusSuccess value)? success,
    TResult Function(__LocationStatusError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStatusLoading value)? loading,
    TResult Function(_LocationStatusIdle value)? idle,
    TResult Function(_LocatiorStatusSuccess value)? success,
    TResult Function(__LocationStatusError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStatusCopyWith<$Res> {
  factory $LocationStatusCopyWith(
          LocationStatus value, $Res Function(LocationStatus) then) =
      _$LocationStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStatusCopyWithImpl<$Res>
    implements $LocationStatusCopyWith<$Res> {
  _$LocationStatusCopyWithImpl(this._value, this._then);

  final LocationStatus _value;
  // ignore: unused_field
  final $Res Function(LocationStatus) _then;
}

/// @nodoc
abstract class _$$_LocationStatusLoadingCopyWith<$Res> {
  factory _$$_LocationStatusLoadingCopyWith(_$_LocationStatusLoading value,
          $Res Function(_$_LocationStatusLoading) then) =
      __$$_LocationStatusLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocationStatusLoadingCopyWithImpl<$Res>
    extends _$LocationStatusCopyWithImpl<$Res>
    implements _$$_LocationStatusLoadingCopyWith<$Res> {
  __$$_LocationStatusLoadingCopyWithImpl(_$_LocationStatusLoading _value,
      $Res Function(_$_LocationStatusLoading) _then)
      : super(_value, (v) => _then(v as _$_LocationStatusLoading));

  @override
  _$_LocationStatusLoading get _value =>
      super._value as _$_LocationStatusLoading;
}

/// @nodoc

class _$_LocationStatusLoading implements _LocationStatusLoading {
  const _$_LocationStatusLoading();

  @override
  String toString() {
    return 'LocationStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LocationStatusLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(LatLng location) success,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(LatLng location)? success,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(LatLng location)? success,
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
    required TResult Function(_LocationStatusLoading value) loading,
    required TResult Function(_LocationStatusIdle value) idle,
    required TResult Function(_LocatiorStatusSuccess value) success,
    required TResult Function(__LocationStatusError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationStatusLoading value)? loading,
    TResult Function(_LocationStatusIdle value)? idle,
    TResult Function(_LocatiorStatusSuccess value)? success,
    TResult Function(__LocationStatusError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStatusLoading value)? loading,
    TResult Function(_LocationStatusIdle value)? idle,
    TResult Function(_LocatiorStatusSuccess value)? success,
    TResult Function(__LocationStatusError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LocationStatusLoading implements LocationStatus {
  const factory _LocationStatusLoading() = _$_LocationStatusLoading;
}

/// @nodoc
abstract class _$$_LocationStatusIdleCopyWith<$Res> {
  factory _$$_LocationStatusIdleCopyWith(_$_LocationStatusIdle value,
          $Res Function(_$_LocationStatusIdle) then) =
      __$$_LocationStatusIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocationStatusIdleCopyWithImpl<$Res>
    extends _$LocationStatusCopyWithImpl<$Res>
    implements _$$_LocationStatusIdleCopyWith<$Res> {
  __$$_LocationStatusIdleCopyWithImpl(
      _$_LocationStatusIdle _value, $Res Function(_$_LocationStatusIdle) _then)
      : super(_value, (v) => _then(v as _$_LocationStatusIdle));

  @override
  _$_LocationStatusIdle get _value => super._value as _$_LocationStatusIdle;
}

/// @nodoc

class _$_LocationStatusIdle implements _LocationStatusIdle {
  const _$_LocationStatusIdle();

  @override
  String toString() {
    return 'LocationStatus.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LocationStatusIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(LatLng location) success,
    required TResult Function(String? error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(LatLng location)? success,
    TResult Function(String? error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(LatLng location)? success,
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
    required TResult Function(_LocationStatusLoading value) loading,
    required TResult Function(_LocationStatusIdle value) idle,
    required TResult Function(_LocatiorStatusSuccess value) success,
    required TResult Function(__LocationStatusError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationStatusLoading value)? loading,
    TResult Function(_LocationStatusIdle value)? idle,
    TResult Function(_LocatiorStatusSuccess value)? success,
    TResult Function(__LocationStatusError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStatusLoading value)? loading,
    TResult Function(_LocationStatusIdle value)? idle,
    TResult Function(_LocatiorStatusSuccess value)? success,
    TResult Function(__LocationStatusError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _LocationStatusIdle implements LocationStatus {
  const factory _LocationStatusIdle() = _$_LocationStatusIdle;
}

/// @nodoc
abstract class _$$_LocatiorStatusSuccessCopyWith<$Res> {
  factory _$$_LocatiorStatusSuccessCopyWith(_$_LocatiorStatusSuccess value,
          $Res Function(_$_LocatiorStatusSuccess) then) =
      __$$_LocatiorStatusSuccessCopyWithImpl<$Res>;
  $Res call({LatLng location});
}

/// @nodoc
class __$$_LocatiorStatusSuccessCopyWithImpl<$Res>
    extends _$LocationStatusCopyWithImpl<$Res>
    implements _$$_LocatiorStatusSuccessCopyWith<$Res> {
  __$$_LocatiorStatusSuccessCopyWithImpl(_$_LocatiorStatusSuccess _value,
      $Res Function(_$_LocatiorStatusSuccess) _then)
      : super(_value, (v) => _then(v as _$_LocatiorStatusSuccess));

  @override
  _$_LocatiorStatusSuccess get _value =>
      super._value as _$_LocatiorStatusSuccess;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$_LocatiorStatusSuccess(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_LocatiorStatusSuccess implements _LocatiorStatusSuccess {
  const _$_LocatiorStatusSuccess(this.location);

  @override
  final LatLng location;

  @override
  String toString() {
    return 'LocationStatus.success(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocatiorStatusSuccess &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_LocatiorStatusSuccessCopyWith<_$_LocatiorStatusSuccess> get copyWith =>
      __$$_LocatiorStatusSuccessCopyWithImpl<_$_LocatiorStatusSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(LatLng location) success,
    required TResult Function(String? error) error,
  }) {
    return success(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(LatLng location)? success,
    TResult Function(String? error)? error,
  }) {
    return success?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(LatLng location)? success,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationStatusLoading value) loading,
    required TResult Function(_LocationStatusIdle value) idle,
    required TResult Function(_LocatiorStatusSuccess value) success,
    required TResult Function(__LocationStatusError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationStatusLoading value)? loading,
    TResult Function(_LocationStatusIdle value)? idle,
    TResult Function(_LocatiorStatusSuccess value)? success,
    TResult Function(__LocationStatusError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStatusLoading value)? loading,
    TResult Function(_LocationStatusIdle value)? idle,
    TResult Function(_LocatiorStatusSuccess value)? success,
    TResult Function(__LocationStatusError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LocatiorStatusSuccess implements LocationStatus {
  const factory _LocatiorStatusSuccess(final LatLng location) =
      _$_LocatiorStatusSuccess;

  LatLng get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LocatiorStatusSuccessCopyWith<_$_LocatiorStatusSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$__LocationStatusErrorCopyWith<$Res> {
  factory _$$__LocationStatusErrorCopyWith(_$__LocationStatusError value,
          $Res Function(_$__LocationStatusError) then) =
      __$$__LocationStatusErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$$__LocationStatusErrorCopyWithImpl<$Res>
    extends _$LocationStatusCopyWithImpl<$Res>
    implements _$$__LocationStatusErrorCopyWith<$Res> {
  __$$__LocationStatusErrorCopyWithImpl(_$__LocationStatusError _value,
      $Res Function(_$__LocationStatusError) _then)
      : super(_value, (v) => _then(v as _$__LocationStatusError));

  @override
  _$__LocationStatusError get _value => super._value as _$__LocationStatusError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$__LocationStatusError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$__LocationStatusError implements __LocationStatusError {
  const _$__LocationStatusError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'LocationStatus.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__LocationStatusError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$__LocationStatusErrorCopyWith<_$__LocationStatusError> get copyWith =>
      __$$__LocationStatusErrorCopyWithImpl<_$__LocationStatusError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(LatLng location) success,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(LatLng location)? success,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(LatLng location)? success,
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
    required TResult Function(_LocationStatusLoading value) loading,
    required TResult Function(_LocationStatusIdle value) idle,
    required TResult Function(_LocatiorStatusSuccess value) success,
    required TResult Function(__LocationStatusError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationStatusLoading value)? loading,
    TResult Function(_LocationStatusIdle value)? idle,
    TResult Function(_LocatiorStatusSuccess value)? success,
    TResult Function(__LocationStatusError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStatusLoading value)? loading,
    TResult Function(_LocationStatusIdle value)? idle,
    TResult Function(_LocatiorStatusSuccess value)? success,
    TResult Function(__LocationStatusError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class __LocationStatusError implements LocationStatus {
  const factory __LocationStatusError([final String? error]) =
      _$__LocationStatusError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$__LocationStatusErrorCopyWith<_$__LocationStatusError> get copyWith =>
      throw _privateConstructorUsedError;
}
