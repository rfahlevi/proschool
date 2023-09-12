// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cbt_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CbtEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() lockScreen,
    required TResult Function() unlockScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? lockScreen,
    TResult? Function()? unlockScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? lockScreen,
    TResult Function()? unlockScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LockScreen value) lockScreen,
    required TResult Function(_UnlockScreen value) unlockScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LockScreen value)? lockScreen,
    TResult? Function(_UnlockScreen value)? unlockScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LockScreen value)? lockScreen,
    TResult Function(_UnlockScreen value)? unlockScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CbtEventCopyWith<$Res> {
  factory $CbtEventCopyWith(CbtEvent value, $Res Function(CbtEvent) then) =
      _$CbtEventCopyWithImpl<$Res, CbtEvent>;
}

/// @nodoc
class _$CbtEventCopyWithImpl<$Res, $Val extends CbtEvent>
    implements $CbtEventCopyWith<$Res> {
  _$CbtEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CbtEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CbtEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() lockScreen,
    required TResult Function() unlockScreen,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? lockScreen,
    TResult? Function()? unlockScreen,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? lockScreen,
    TResult Function()? unlockScreen,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LockScreen value) lockScreen,
    required TResult Function(_UnlockScreen value) unlockScreen,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LockScreen value)? lockScreen,
    TResult? Function(_UnlockScreen value)? unlockScreen,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LockScreen value)? lockScreen,
    TResult Function(_UnlockScreen value)? unlockScreen,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CbtEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_LockScreenCopyWith<$Res> {
  factory _$$_LockScreenCopyWith(
          _$_LockScreen value, $Res Function(_$_LockScreen) then) =
      __$$_LockScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LockScreenCopyWithImpl<$Res>
    extends _$CbtEventCopyWithImpl<$Res, _$_LockScreen>
    implements _$$_LockScreenCopyWith<$Res> {
  __$$_LockScreenCopyWithImpl(
      _$_LockScreen _value, $Res Function(_$_LockScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LockScreen implements _LockScreen {
  const _$_LockScreen();

  @override
  String toString() {
    return 'CbtEvent.lockScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LockScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() lockScreen,
    required TResult Function() unlockScreen,
  }) {
    return lockScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? lockScreen,
    TResult? Function()? unlockScreen,
  }) {
    return lockScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? lockScreen,
    TResult Function()? unlockScreen,
    required TResult orElse(),
  }) {
    if (lockScreen != null) {
      return lockScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LockScreen value) lockScreen,
    required TResult Function(_UnlockScreen value) unlockScreen,
  }) {
    return lockScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LockScreen value)? lockScreen,
    TResult? Function(_UnlockScreen value)? unlockScreen,
  }) {
    return lockScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LockScreen value)? lockScreen,
    TResult Function(_UnlockScreen value)? unlockScreen,
    required TResult orElse(),
  }) {
    if (lockScreen != null) {
      return lockScreen(this);
    }
    return orElse();
  }
}

abstract class _LockScreen implements CbtEvent {
  const factory _LockScreen() = _$_LockScreen;
}

/// @nodoc
abstract class _$$_UnlockScreenCopyWith<$Res> {
  factory _$$_UnlockScreenCopyWith(
          _$_UnlockScreen value, $Res Function(_$_UnlockScreen) then) =
      __$$_UnlockScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnlockScreenCopyWithImpl<$Res>
    extends _$CbtEventCopyWithImpl<$Res, _$_UnlockScreen>
    implements _$$_UnlockScreenCopyWith<$Res> {
  __$$_UnlockScreenCopyWithImpl(
      _$_UnlockScreen _value, $Res Function(_$_UnlockScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnlockScreen implements _UnlockScreen {
  const _$_UnlockScreen();

  @override
  String toString() {
    return 'CbtEvent.unlockScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnlockScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() lockScreen,
    required TResult Function() unlockScreen,
  }) {
    return unlockScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? lockScreen,
    TResult? Function()? unlockScreen,
  }) {
    return unlockScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? lockScreen,
    TResult Function()? unlockScreen,
    required TResult orElse(),
  }) {
    if (unlockScreen != null) {
      return unlockScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LockScreen value) lockScreen,
    required TResult Function(_UnlockScreen value) unlockScreen,
  }) {
    return unlockScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LockScreen value)? lockScreen,
    TResult? Function(_UnlockScreen value)? unlockScreen,
  }) {
    return unlockScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LockScreen value)? lockScreen,
    TResult Function(_UnlockScreen value)? unlockScreen,
    required TResult orElse(),
  }) {
    if (unlockScreen != null) {
      return unlockScreen(this);
    }
    return orElse();
  }
}

abstract class _UnlockScreen implements CbtEvent {
  const factory _UnlockScreen() = _$_UnlockScreen;
}

/// @nodoc
mixin _$CbtState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() locked,
    required TResult Function() unlocked,
    required TResult Function() noResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? locked,
    TResult? Function()? unlocked,
    TResult? Function()? noResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function()? noResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
    required TResult Function(_NoResponse value) noResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Locked value)? locked,
    TResult? Function(_Unlocked value)? unlocked,
    TResult? Function(_NoResponse value)? noResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_NoResponse value)? noResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CbtStateCopyWith<$Res> {
  factory $CbtStateCopyWith(CbtState value, $Res Function(CbtState) then) =
      _$CbtStateCopyWithImpl<$Res, CbtState>;
}

/// @nodoc
class _$CbtStateCopyWithImpl<$Res, $Val extends CbtState>
    implements $CbtStateCopyWith<$Res> {
  _$CbtStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CbtStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CbtState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() locked,
    required TResult Function() unlocked,
    required TResult Function() noResponse,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? locked,
    TResult? Function()? unlocked,
    TResult? Function()? noResponse,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function()? noResponse,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
    required TResult Function(_NoResponse value) noResponse,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Locked value)? locked,
    TResult? Function(_Unlocked value)? unlocked,
    TResult? Function(_NoResponse value)? noResponse,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_NoResponse value)? noResponse,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CbtState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CbtStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CbtState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() locked,
    required TResult Function() unlocked,
    required TResult Function() noResponse,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? locked,
    TResult? Function()? unlocked,
    TResult? Function()? noResponse,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function()? noResponse,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
    required TResult Function(_NoResponse value) noResponse,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Locked value)? locked,
    TResult? Function(_Unlocked value)? unlocked,
    TResult? Function(_NoResponse value)? noResponse,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_NoResponse value)? noResponse,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CbtState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LockedCopyWith<$Res> {
  factory _$$_LockedCopyWith(_$_Locked value, $Res Function(_$_Locked) then) =
      __$$_LockedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LockedCopyWithImpl<$Res>
    extends _$CbtStateCopyWithImpl<$Res, _$_Locked>
    implements _$$_LockedCopyWith<$Res> {
  __$$_LockedCopyWithImpl(_$_Locked _value, $Res Function(_$_Locked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Locked implements _Locked {
  const _$_Locked();

  @override
  String toString() {
    return 'CbtState.locked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Locked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() locked,
    required TResult Function() unlocked,
    required TResult Function() noResponse,
  }) {
    return locked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? locked,
    TResult? Function()? unlocked,
    TResult? Function()? noResponse,
  }) {
    return locked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function()? noResponse,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
    required TResult Function(_NoResponse value) noResponse,
  }) {
    return locked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Locked value)? locked,
    TResult? Function(_Unlocked value)? unlocked,
    TResult? Function(_NoResponse value)? noResponse,
  }) {
    return locked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_NoResponse value)? noResponse,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked(this);
    }
    return orElse();
  }
}

abstract class _Locked implements CbtState {
  const factory _Locked() = _$_Locked;
}

/// @nodoc
abstract class _$$_UnlockedCopyWith<$Res> {
  factory _$$_UnlockedCopyWith(
          _$_Unlocked value, $Res Function(_$_Unlocked) then) =
      __$$_UnlockedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnlockedCopyWithImpl<$Res>
    extends _$CbtStateCopyWithImpl<$Res, _$_Unlocked>
    implements _$$_UnlockedCopyWith<$Res> {
  __$$_UnlockedCopyWithImpl(
      _$_Unlocked _value, $Res Function(_$_Unlocked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unlocked implements _Unlocked {
  const _$_Unlocked();

  @override
  String toString() {
    return 'CbtState.unlocked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unlocked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() locked,
    required TResult Function() unlocked,
    required TResult Function() noResponse,
  }) {
    return unlocked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? locked,
    TResult? Function()? unlocked,
    TResult? Function()? noResponse,
  }) {
    return unlocked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function()? noResponse,
    required TResult orElse(),
  }) {
    if (unlocked != null) {
      return unlocked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
    required TResult Function(_NoResponse value) noResponse,
  }) {
    return unlocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Locked value)? locked,
    TResult? Function(_Unlocked value)? unlocked,
    TResult? Function(_NoResponse value)? noResponse,
  }) {
    return unlocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_NoResponse value)? noResponse,
    required TResult orElse(),
  }) {
    if (unlocked != null) {
      return unlocked(this);
    }
    return orElse();
  }
}

abstract class _Unlocked implements CbtState {
  const factory _Unlocked() = _$_Unlocked;
}

/// @nodoc
abstract class _$$_NoResponseCopyWith<$Res> {
  factory _$$_NoResponseCopyWith(
          _$_NoResponse value, $Res Function(_$_NoResponse) then) =
      __$$_NoResponseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoResponseCopyWithImpl<$Res>
    extends _$CbtStateCopyWithImpl<$Res, _$_NoResponse>
    implements _$$_NoResponseCopyWith<$Res> {
  __$$_NoResponseCopyWithImpl(
      _$_NoResponse _value, $Res Function(_$_NoResponse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoResponse implements _NoResponse {
  const _$_NoResponse();

  @override
  String toString() {
    return 'CbtState.noResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoResponse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() locked,
    required TResult Function() unlocked,
    required TResult Function() noResponse,
  }) {
    return noResponse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? locked,
    TResult? Function()? unlocked,
    TResult? Function()? noResponse,
  }) {
    return noResponse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function()? noResponse,
    required TResult orElse(),
  }) {
    if (noResponse != null) {
      return noResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
    required TResult Function(_NoResponse value) noResponse,
  }) {
    return noResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Locked value)? locked,
    TResult? Function(_Unlocked value)? unlocked,
    TResult? Function(_NoResponse value)? noResponse,
  }) {
    return noResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_NoResponse value)? noResponse,
    required TResult orElse(),
  }) {
    if (noResponse != null) {
      return noResponse(this);
    }
    return orElse();
  }
}

abstract class _NoResponse implements CbtState {
  const factory _NoResponse() = _$_NoResponse;
}
