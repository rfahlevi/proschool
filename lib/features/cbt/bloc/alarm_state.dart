part of 'alarm_bloc.dart';

@freezed
class AlarmState with _$AlarmState {
  const factory AlarmState.initial() = _Initial;
  const factory AlarmState.playAlarm() = _PlayAlarm;
  const factory AlarmState.stopAlarm() = _StopAlarm;
}
