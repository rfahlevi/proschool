// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlarmEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playAlarmEvent,
    required TResult Function() correctAlarm,
    required TResult Function() wrongAlarm,
    required TResult Function() stopAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playAlarmEvent,
    TResult? Function()? correctAlarm,
    TResult? Function()? wrongAlarm,
    TResult? Function()? stopAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playAlarmEvent,
    TResult Function()? correctAlarm,
    TResult Function()? wrongAlarm,
    TResult Function()? stopAlarm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayAlarmEvent value) playAlarmEvent,
    required TResult Function(_CorrectAlarmEvent value) correctAlarm,
    required TResult Function(_WrongAlarmEvent value) wrongAlarm,
    required TResult Function(_StopAlarmEvent value) stopAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult? Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult? Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult? Function(_StopAlarmEvent value)? stopAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult Function(_StopAlarmEvent value)? stopAlarm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmEventCopyWith<$Res> {
  factory $AlarmEventCopyWith(
          AlarmEvent value, $Res Function(AlarmEvent) then) =
      _$AlarmEventCopyWithImpl<$Res, AlarmEvent>;
}

/// @nodoc
class _$AlarmEventCopyWithImpl<$Res, $Val extends AlarmEvent>
    implements $AlarmEventCopyWith<$Res> {
  _$AlarmEventCopyWithImpl(this._value, this._then);

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
    extends _$AlarmEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AlarmEvent.started()';
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
    required TResult Function() playAlarmEvent,
    required TResult Function() correctAlarm,
    required TResult Function() wrongAlarm,
    required TResult Function() stopAlarm,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playAlarmEvent,
    TResult? Function()? correctAlarm,
    TResult? Function()? wrongAlarm,
    TResult? Function()? stopAlarm,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playAlarmEvent,
    TResult Function()? correctAlarm,
    TResult Function()? wrongAlarm,
    TResult Function()? stopAlarm,
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
    required TResult Function(_PlayAlarmEvent value) playAlarmEvent,
    required TResult Function(_CorrectAlarmEvent value) correctAlarm,
    required TResult Function(_WrongAlarmEvent value) wrongAlarm,
    required TResult Function(_StopAlarmEvent value) stopAlarm,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult? Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult? Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult? Function(_StopAlarmEvent value)? stopAlarm,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult Function(_StopAlarmEvent value)? stopAlarm,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AlarmEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_PlayAlarmEventCopyWith<$Res> {
  factory _$$_PlayAlarmEventCopyWith(
          _$_PlayAlarmEvent value, $Res Function(_$_PlayAlarmEvent) then) =
      __$$_PlayAlarmEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayAlarmEventCopyWithImpl<$Res>
    extends _$AlarmEventCopyWithImpl<$Res, _$_PlayAlarmEvent>
    implements _$$_PlayAlarmEventCopyWith<$Res> {
  __$$_PlayAlarmEventCopyWithImpl(
      _$_PlayAlarmEvent _value, $Res Function(_$_PlayAlarmEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayAlarmEvent implements _PlayAlarmEvent {
  const _$_PlayAlarmEvent();

  @override
  String toString() {
    return 'AlarmEvent.playAlarmEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayAlarmEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playAlarmEvent,
    required TResult Function() correctAlarm,
    required TResult Function() wrongAlarm,
    required TResult Function() stopAlarm,
  }) {
    return playAlarmEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playAlarmEvent,
    TResult? Function()? correctAlarm,
    TResult? Function()? wrongAlarm,
    TResult? Function()? stopAlarm,
  }) {
    return playAlarmEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playAlarmEvent,
    TResult Function()? correctAlarm,
    TResult Function()? wrongAlarm,
    TResult Function()? stopAlarm,
    required TResult orElse(),
  }) {
    if (playAlarmEvent != null) {
      return playAlarmEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayAlarmEvent value) playAlarmEvent,
    required TResult Function(_CorrectAlarmEvent value) correctAlarm,
    required TResult Function(_WrongAlarmEvent value) wrongAlarm,
    required TResult Function(_StopAlarmEvent value) stopAlarm,
  }) {
    return playAlarmEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult? Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult? Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult? Function(_StopAlarmEvent value)? stopAlarm,
  }) {
    return playAlarmEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult Function(_StopAlarmEvent value)? stopAlarm,
    required TResult orElse(),
  }) {
    if (playAlarmEvent != null) {
      return playAlarmEvent(this);
    }
    return orElse();
  }
}

abstract class _PlayAlarmEvent implements AlarmEvent {
  const factory _PlayAlarmEvent() = _$_PlayAlarmEvent;
}

/// @nodoc
abstract class _$$_CorrectAlarmEventCopyWith<$Res> {
  factory _$$_CorrectAlarmEventCopyWith(_$_CorrectAlarmEvent value,
          $Res Function(_$_CorrectAlarmEvent) then) =
      __$$_CorrectAlarmEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CorrectAlarmEventCopyWithImpl<$Res>
    extends _$AlarmEventCopyWithImpl<$Res, _$_CorrectAlarmEvent>
    implements _$$_CorrectAlarmEventCopyWith<$Res> {
  __$$_CorrectAlarmEventCopyWithImpl(
      _$_CorrectAlarmEvent _value, $Res Function(_$_CorrectAlarmEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CorrectAlarmEvent implements _CorrectAlarmEvent {
  const _$_CorrectAlarmEvent();

  @override
  String toString() {
    return 'AlarmEvent.correctAlarm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CorrectAlarmEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playAlarmEvent,
    required TResult Function() correctAlarm,
    required TResult Function() wrongAlarm,
    required TResult Function() stopAlarm,
  }) {
    return correctAlarm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playAlarmEvent,
    TResult? Function()? correctAlarm,
    TResult? Function()? wrongAlarm,
    TResult? Function()? stopAlarm,
  }) {
    return correctAlarm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playAlarmEvent,
    TResult Function()? correctAlarm,
    TResult Function()? wrongAlarm,
    TResult Function()? stopAlarm,
    required TResult orElse(),
  }) {
    if (correctAlarm != null) {
      return correctAlarm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayAlarmEvent value) playAlarmEvent,
    required TResult Function(_CorrectAlarmEvent value) correctAlarm,
    required TResult Function(_WrongAlarmEvent value) wrongAlarm,
    required TResult Function(_StopAlarmEvent value) stopAlarm,
  }) {
    return correctAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult? Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult? Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult? Function(_StopAlarmEvent value)? stopAlarm,
  }) {
    return correctAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult Function(_StopAlarmEvent value)? stopAlarm,
    required TResult orElse(),
  }) {
    if (correctAlarm != null) {
      return correctAlarm(this);
    }
    return orElse();
  }
}

abstract class _CorrectAlarmEvent implements AlarmEvent {
  const factory _CorrectAlarmEvent() = _$_CorrectAlarmEvent;
}

/// @nodoc
abstract class _$$_WrongAlarmEventCopyWith<$Res> {
  factory _$$_WrongAlarmEventCopyWith(
          _$_WrongAlarmEvent value, $Res Function(_$_WrongAlarmEvent) then) =
      __$$_WrongAlarmEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WrongAlarmEventCopyWithImpl<$Res>
    extends _$AlarmEventCopyWithImpl<$Res, _$_WrongAlarmEvent>
    implements _$$_WrongAlarmEventCopyWith<$Res> {
  __$$_WrongAlarmEventCopyWithImpl(
      _$_WrongAlarmEvent _value, $Res Function(_$_WrongAlarmEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WrongAlarmEvent implements _WrongAlarmEvent {
  const _$_WrongAlarmEvent();

  @override
  String toString() {
    return 'AlarmEvent.wrongAlarm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WrongAlarmEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playAlarmEvent,
    required TResult Function() correctAlarm,
    required TResult Function() wrongAlarm,
    required TResult Function() stopAlarm,
  }) {
    return wrongAlarm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playAlarmEvent,
    TResult? Function()? correctAlarm,
    TResult? Function()? wrongAlarm,
    TResult? Function()? stopAlarm,
  }) {
    return wrongAlarm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playAlarmEvent,
    TResult Function()? correctAlarm,
    TResult Function()? wrongAlarm,
    TResult Function()? stopAlarm,
    required TResult orElse(),
  }) {
    if (wrongAlarm != null) {
      return wrongAlarm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayAlarmEvent value) playAlarmEvent,
    required TResult Function(_CorrectAlarmEvent value) correctAlarm,
    required TResult Function(_WrongAlarmEvent value) wrongAlarm,
    required TResult Function(_StopAlarmEvent value) stopAlarm,
  }) {
    return wrongAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult? Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult? Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult? Function(_StopAlarmEvent value)? stopAlarm,
  }) {
    return wrongAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult Function(_StopAlarmEvent value)? stopAlarm,
    required TResult orElse(),
  }) {
    if (wrongAlarm != null) {
      return wrongAlarm(this);
    }
    return orElse();
  }
}

abstract class _WrongAlarmEvent implements AlarmEvent {
  const factory _WrongAlarmEvent() = _$_WrongAlarmEvent;
}

/// @nodoc
abstract class _$$_StopAlarmEventCopyWith<$Res> {
  factory _$$_StopAlarmEventCopyWith(
          _$_StopAlarmEvent value, $Res Function(_$_StopAlarmEvent) then) =
      __$$_StopAlarmEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopAlarmEventCopyWithImpl<$Res>
    extends _$AlarmEventCopyWithImpl<$Res, _$_StopAlarmEvent>
    implements _$$_StopAlarmEventCopyWith<$Res> {
  __$$_StopAlarmEventCopyWithImpl(
      _$_StopAlarmEvent _value, $Res Function(_$_StopAlarmEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StopAlarmEvent implements _StopAlarmEvent {
  const _$_StopAlarmEvent();

  @override
  String toString() {
    return 'AlarmEvent.stopAlarm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StopAlarmEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playAlarmEvent,
    required TResult Function() correctAlarm,
    required TResult Function() wrongAlarm,
    required TResult Function() stopAlarm,
  }) {
    return stopAlarm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playAlarmEvent,
    TResult? Function()? correctAlarm,
    TResult? Function()? wrongAlarm,
    TResult? Function()? stopAlarm,
  }) {
    return stopAlarm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playAlarmEvent,
    TResult Function()? correctAlarm,
    TResult Function()? wrongAlarm,
    TResult Function()? stopAlarm,
    required TResult orElse(),
  }) {
    if (stopAlarm != null) {
      return stopAlarm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayAlarmEvent value) playAlarmEvent,
    required TResult Function(_CorrectAlarmEvent value) correctAlarm,
    required TResult Function(_WrongAlarmEvent value) wrongAlarm,
    required TResult Function(_StopAlarmEvent value) stopAlarm,
  }) {
    return stopAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult? Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult? Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult? Function(_StopAlarmEvent value)? stopAlarm,
  }) {
    return stopAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayAlarmEvent value)? playAlarmEvent,
    TResult Function(_CorrectAlarmEvent value)? correctAlarm,
    TResult Function(_WrongAlarmEvent value)? wrongAlarm,
    TResult Function(_StopAlarmEvent value)? stopAlarm,
    required TResult orElse(),
  }) {
    if (stopAlarm != null) {
      return stopAlarm(this);
    }
    return orElse();
  }
}

abstract class _StopAlarmEvent implements AlarmEvent {
  const factory _StopAlarmEvent() = _$_StopAlarmEvent;
}

/// @nodoc
mixin _$AlarmState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() playAlarm,
    required TResult Function() stopAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? playAlarm,
    TResult? Function()? stopAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? playAlarm,
    TResult Function()? stopAlarm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlayAlarm value) playAlarm,
    required TResult Function(_StopAlarm value) stopAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlayAlarm value)? playAlarm,
    TResult? Function(_StopAlarm value)? stopAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlayAlarm value)? playAlarm,
    TResult Function(_StopAlarm value)? stopAlarm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmStateCopyWith<$Res> {
  factory $AlarmStateCopyWith(
          AlarmState value, $Res Function(AlarmState) then) =
      _$AlarmStateCopyWithImpl<$Res, AlarmState>;
}

/// @nodoc
class _$AlarmStateCopyWithImpl<$Res, $Val extends AlarmState>
    implements $AlarmStateCopyWith<$Res> {
  _$AlarmStateCopyWithImpl(this._value, this._then);

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
    extends _$AlarmStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AlarmState.initial()';
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
    required TResult Function() playAlarm,
    required TResult Function() stopAlarm,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? playAlarm,
    TResult? Function()? stopAlarm,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? playAlarm,
    TResult Function()? stopAlarm,
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
    required TResult Function(_PlayAlarm value) playAlarm,
    required TResult Function(_StopAlarm value) stopAlarm,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlayAlarm value)? playAlarm,
    TResult? Function(_StopAlarm value)? stopAlarm,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlayAlarm value)? playAlarm,
    TResult Function(_StopAlarm value)? stopAlarm,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AlarmState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_PlayAlarmCopyWith<$Res> {
  factory _$$_PlayAlarmCopyWith(
          _$_PlayAlarm value, $Res Function(_$_PlayAlarm) then) =
      __$$_PlayAlarmCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayAlarmCopyWithImpl<$Res>
    extends _$AlarmStateCopyWithImpl<$Res, _$_PlayAlarm>
    implements _$$_PlayAlarmCopyWith<$Res> {
  __$$_PlayAlarmCopyWithImpl(
      _$_PlayAlarm _value, $Res Function(_$_PlayAlarm) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayAlarm implements _PlayAlarm {
  const _$_PlayAlarm();

  @override
  String toString() {
    return 'AlarmState.playAlarm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayAlarm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() playAlarm,
    required TResult Function() stopAlarm,
  }) {
    return playAlarm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? playAlarm,
    TResult? Function()? stopAlarm,
  }) {
    return playAlarm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? playAlarm,
    TResult Function()? stopAlarm,
    required TResult orElse(),
  }) {
    if (playAlarm != null) {
      return playAlarm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlayAlarm value) playAlarm,
    required TResult Function(_StopAlarm value) stopAlarm,
  }) {
    return playAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlayAlarm value)? playAlarm,
    TResult? Function(_StopAlarm value)? stopAlarm,
  }) {
    return playAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlayAlarm value)? playAlarm,
    TResult Function(_StopAlarm value)? stopAlarm,
    required TResult orElse(),
  }) {
    if (playAlarm != null) {
      return playAlarm(this);
    }
    return orElse();
  }
}

abstract class _PlayAlarm implements AlarmState {
  const factory _PlayAlarm() = _$_PlayAlarm;
}

/// @nodoc
abstract class _$$_StopAlarmCopyWith<$Res> {
  factory _$$_StopAlarmCopyWith(
          _$_StopAlarm value, $Res Function(_$_StopAlarm) then) =
      __$$_StopAlarmCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopAlarmCopyWithImpl<$Res>
    extends _$AlarmStateCopyWithImpl<$Res, _$_StopAlarm>
    implements _$$_StopAlarmCopyWith<$Res> {
  __$$_StopAlarmCopyWithImpl(
      _$_StopAlarm _value, $Res Function(_$_StopAlarm) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StopAlarm implements _StopAlarm {
  const _$_StopAlarm();

  @override
  String toString() {
    return 'AlarmState.stopAlarm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StopAlarm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() playAlarm,
    required TResult Function() stopAlarm,
  }) {
    return stopAlarm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? playAlarm,
    TResult? Function()? stopAlarm,
  }) {
    return stopAlarm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? playAlarm,
    TResult Function()? stopAlarm,
    required TResult orElse(),
  }) {
    if (stopAlarm != null) {
      return stopAlarm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlayAlarm value) playAlarm,
    required TResult Function(_StopAlarm value) stopAlarm,
  }) {
    return stopAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlayAlarm value)? playAlarm,
    TResult? Function(_StopAlarm value)? stopAlarm,
  }) {
    return stopAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlayAlarm value)? playAlarm,
    TResult Function(_StopAlarm value)? stopAlarm,
    required TResult orElse(),
  }) {
    if (stopAlarm != null) {
      return stopAlarm(this);
    }
    return orElse();
  }
}

abstract class _StopAlarm implements AlarmState {
  const factory _StopAlarm() = _$_StopAlarm;
}
