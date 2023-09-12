part of 'alarm_bloc.dart';

@freezed
class AlarmEvent with _$AlarmEvent {
  const factory AlarmEvent.started() = _Started;
  const factory AlarmEvent.playAlarmEvent() = _PlayAlarmEvent;
  const factory AlarmEvent.correctAlarm() = _CorrectAlarmEvent;
  const factory AlarmEvent.wrongAlarm() = _WrongAlarmEvent;
  const factory AlarmEvent.stopAlarm() = _StopAlarmEvent;
}
