// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_token_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckTokenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SchoolTokenResponseModel? schoolData)
        doIdentificate,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SchoolTokenResponseModel? schoolData)? doIdentificate,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SchoolTokenResponseModel? schoolData)? doIdentificate,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DoIdentificate value) doIdentificate,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DoIdentificate value)? doIdentificate,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DoIdentificate value)? doIdentificate,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckTokenEventCopyWith<$Res> {
  factory $CheckTokenEventCopyWith(
          CheckTokenEvent value, $Res Function(CheckTokenEvent) then) =
      _$CheckTokenEventCopyWithImpl<$Res, CheckTokenEvent>;
}

/// @nodoc
class _$CheckTokenEventCopyWithImpl<$Res, $Val extends CheckTokenEvent>
    implements $CheckTokenEventCopyWith<$Res> {
  _$CheckTokenEventCopyWithImpl(this._value, this._then);

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
    extends _$CheckTokenEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CheckTokenEvent.started()';
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
    required TResult Function(SchoolTokenResponseModel? schoolData)
        doIdentificate,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SchoolTokenResponseModel? schoolData)? doIdentificate,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SchoolTokenResponseModel? schoolData)? doIdentificate,
    TResult Function()? logout,
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
    required TResult Function(_DoIdentificate value) doIdentificate,
    required TResult Function(_Logout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DoIdentificate value)? doIdentificate,
    TResult? Function(_Logout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DoIdentificate value)? doIdentificate,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckTokenEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_DoIdentificateCopyWith<$Res> {
  factory _$$_DoIdentificateCopyWith(
          _$_DoIdentificate value, $Res Function(_$_DoIdentificate) then) =
      __$$_DoIdentificateCopyWithImpl<$Res>;
  @useResult
  $Res call({SchoolTokenResponseModel? schoolData});
}

/// @nodoc
class __$$_DoIdentificateCopyWithImpl<$Res>
    extends _$CheckTokenEventCopyWithImpl<$Res, _$_DoIdentificate>
    implements _$$_DoIdentificateCopyWith<$Res> {
  __$$_DoIdentificateCopyWithImpl(
      _$_DoIdentificate _value, $Res Function(_$_DoIdentificate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolData = freezed,
  }) {
    return _then(_$_DoIdentificate(
      schoolData: freezed == schoolData
          ? _value.schoolData
          : schoolData // ignore: cast_nullable_to_non_nullable
              as SchoolTokenResponseModel?,
    ));
  }
}

/// @nodoc

class _$_DoIdentificate implements _DoIdentificate {
  const _$_DoIdentificate({required this.schoolData});

  @override
  final SchoolTokenResponseModel? schoolData;

  @override
  String toString() {
    return 'CheckTokenEvent.doIdentificate(schoolData: $schoolData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoIdentificate &&
            (identical(other.schoolData, schoolData) ||
                other.schoolData == schoolData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoIdentificateCopyWith<_$_DoIdentificate> get copyWith =>
      __$$_DoIdentificateCopyWithImpl<_$_DoIdentificate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SchoolTokenResponseModel? schoolData)
        doIdentificate,
    required TResult Function() logout,
  }) {
    return doIdentificate(schoolData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SchoolTokenResponseModel? schoolData)? doIdentificate,
    TResult? Function()? logout,
  }) {
    return doIdentificate?.call(schoolData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SchoolTokenResponseModel? schoolData)? doIdentificate,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (doIdentificate != null) {
      return doIdentificate(schoolData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DoIdentificate value) doIdentificate,
    required TResult Function(_Logout value) logout,
  }) {
    return doIdentificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DoIdentificate value)? doIdentificate,
    TResult? Function(_Logout value)? logout,
  }) {
    return doIdentificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DoIdentificate value)? doIdentificate,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (doIdentificate != null) {
      return doIdentificate(this);
    }
    return orElse();
  }
}

abstract class _DoIdentificate implements CheckTokenEvent {
  const factory _DoIdentificate(
          {required final SchoolTokenResponseModel? schoolData}) =
      _$_DoIdentificate;

  SchoolTokenResponseModel? get schoolData;
  @JsonKey(ignore: true)
  _$$_DoIdentificateCopyWith<_$_DoIdentificate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$CheckTokenEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'CheckTokenEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SchoolTokenResponseModel? schoolData)
        doIdentificate,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SchoolTokenResponseModel? schoolData)? doIdentificate,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SchoolTokenResponseModel? schoolData)? doIdentificate,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DoIdentificate value) doIdentificate,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DoIdentificate value)? doIdentificate,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DoIdentificate value)? doIdentificate,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements CheckTokenEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
mixin _$CheckTokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SchoolTokenResponseModel schoolData) identificate,
    required TResult Function() unidentificate,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SchoolTokenResponseModel schoolData)? identificate,
    TResult? Function()? unidentificate,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SchoolTokenResponseModel schoolData)? identificate,
    TResult Function()? unidentificate,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Identificate value) identificate,
    required TResult Function(_Unidentificate value) unidentificate,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Identificate value)? identificate,
    TResult? Function(_Unidentificate value)? unidentificate,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Identificate value)? identificate,
    TResult Function(_Unidentificate value)? unidentificate,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckTokenStateCopyWith<$Res> {
  factory $CheckTokenStateCopyWith(
          CheckTokenState value, $Res Function(CheckTokenState) then) =
      _$CheckTokenStateCopyWithImpl<$Res, CheckTokenState>;
}

/// @nodoc
class _$CheckTokenStateCopyWithImpl<$Res, $Val extends CheckTokenState>
    implements $CheckTokenStateCopyWith<$Res> {
  _$CheckTokenStateCopyWithImpl(this._value, this._then);

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
    extends _$CheckTokenStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CheckTokenState.initial()';
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
    required TResult Function(SchoolTokenResponseModel schoolData) identificate,
    required TResult Function() unidentificate,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SchoolTokenResponseModel schoolData)? identificate,
    TResult? Function()? unidentificate,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SchoolTokenResponseModel schoolData)? identificate,
    TResult Function()? unidentificate,
    TResult Function()? loading,
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
    required TResult Function(_Identificate value) identificate,
    required TResult Function(_Unidentificate value) unidentificate,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Identificate value)? identificate,
    TResult? Function(_Unidentificate value)? unidentificate,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Identificate value)? identificate,
    TResult Function(_Unidentificate value)? unidentificate,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckTokenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_IdentificateCopyWith<$Res> {
  factory _$$_IdentificateCopyWith(
          _$_Identificate value, $Res Function(_$_Identificate) then) =
      __$$_IdentificateCopyWithImpl<$Res>;
  @useResult
  $Res call({SchoolTokenResponseModel schoolData});
}

/// @nodoc
class __$$_IdentificateCopyWithImpl<$Res>
    extends _$CheckTokenStateCopyWithImpl<$Res, _$_Identificate>
    implements _$$_IdentificateCopyWith<$Res> {
  __$$_IdentificateCopyWithImpl(
      _$_Identificate _value, $Res Function(_$_Identificate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolData = null,
  }) {
    return _then(_$_Identificate(
      schoolData: null == schoolData
          ? _value.schoolData
          : schoolData // ignore: cast_nullable_to_non_nullable
              as SchoolTokenResponseModel,
    ));
  }
}

/// @nodoc

class _$_Identificate implements _Identificate {
  const _$_Identificate({required this.schoolData});

  @override
  final SchoolTokenResponseModel schoolData;

  @override
  String toString() {
    return 'CheckTokenState.identificate(schoolData: $schoolData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Identificate &&
            (identical(other.schoolData, schoolData) ||
                other.schoolData == schoolData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdentificateCopyWith<_$_Identificate> get copyWith =>
      __$$_IdentificateCopyWithImpl<_$_Identificate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SchoolTokenResponseModel schoolData) identificate,
    required TResult Function() unidentificate,
    required TResult Function() loading,
  }) {
    return identificate(schoolData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SchoolTokenResponseModel schoolData)? identificate,
    TResult? Function()? unidentificate,
    TResult? Function()? loading,
  }) {
    return identificate?.call(schoolData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SchoolTokenResponseModel schoolData)? identificate,
    TResult Function()? unidentificate,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (identificate != null) {
      return identificate(schoolData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Identificate value) identificate,
    required TResult Function(_Unidentificate value) unidentificate,
    required TResult Function(_Loading value) loading,
  }) {
    return identificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Identificate value)? identificate,
    TResult? Function(_Unidentificate value)? unidentificate,
    TResult? Function(_Loading value)? loading,
  }) {
    return identificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Identificate value)? identificate,
    TResult Function(_Unidentificate value)? unidentificate,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (identificate != null) {
      return identificate(this);
    }
    return orElse();
  }
}

abstract class _Identificate implements CheckTokenState {
  const factory _Identificate(
      {required final SchoolTokenResponseModel schoolData}) = _$_Identificate;

  SchoolTokenResponseModel get schoolData;
  @JsonKey(ignore: true)
  _$$_IdentificateCopyWith<_$_Identificate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnidentificateCopyWith<$Res> {
  factory _$$_UnidentificateCopyWith(
          _$_Unidentificate value, $Res Function(_$_Unidentificate) then) =
      __$$_UnidentificateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnidentificateCopyWithImpl<$Res>
    extends _$CheckTokenStateCopyWithImpl<$Res, _$_Unidentificate>
    implements _$$_UnidentificateCopyWith<$Res> {
  __$$_UnidentificateCopyWithImpl(
      _$_Unidentificate _value, $Res Function(_$_Unidentificate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unidentificate implements _Unidentificate {
  const _$_Unidentificate();

  @override
  String toString() {
    return 'CheckTokenState.unidentificate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unidentificate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SchoolTokenResponseModel schoolData) identificate,
    required TResult Function() unidentificate,
    required TResult Function() loading,
  }) {
    return unidentificate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SchoolTokenResponseModel schoolData)? identificate,
    TResult? Function()? unidentificate,
    TResult? Function()? loading,
  }) {
    return unidentificate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SchoolTokenResponseModel schoolData)? identificate,
    TResult Function()? unidentificate,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (unidentificate != null) {
      return unidentificate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Identificate value) identificate,
    required TResult Function(_Unidentificate value) unidentificate,
    required TResult Function(_Loading value) loading,
  }) {
    return unidentificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Identificate value)? identificate,
    TResult? Function(_Unidentificate value)? unidentificate,
    TResult? Function(_Loading value)? loading,
  }) {
    return unidentificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Identificate value)? identificate,
    TResult Function(_Unidentificate value)? unidentificate,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (unidentificate != null) {
      return unidentificate(this);
    }
    return orElse();
  }
}

abstract class _Unidentificate implements CheckTokenState {
  const factory _Unidentificate() = _$_Unidentificate;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CheckTokenStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CheckTokenState.loading()';
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
    required TResult Function(SchoolTokenResponseModel schoolData) identificate,
    required TResult Function() unidentificate,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SchoolTokenResponseModel schoolData)? identificate,
    TResult? Function()? unidentificate,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SchoolTokenResponseModel schoolData)? identificate,
    TResult Function()? unidentificate,
    TResult Function()? loading,
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
    required TResult Function(_Identificate value) identificate,
    required TResult Function(_Unidentificate value) unidentificate,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Identificate value)? identificate,
    TResult? Function(_Unidentificate value)? unidentificate,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Identificate value)? identificate,
    TResult Function(_Unidentificate value)? unidentificate,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CheckTokenState {
  const factory _Loading() = _$_Loading;
}
