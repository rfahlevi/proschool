part of 'cbt_bloc.dart';

@freezed
class CbtEvent with _$CbtEvent {
  const factory CbtEvent.started() = _Started;
  const factory CbtEvent.lockScreen() = _LockScreen;
  const factory CbtEvent.unlockScreen() = _UnlockScreen;
}
