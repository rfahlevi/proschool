// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:alarmplayer/alarmplayer.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alarm_bloc.freezed.dart';
part 'alarm_event.dart';
part 'alarm_state.dart';

class AlarmBloc extends Bloc<AlarmEvent, AlarmState> {
  final Alarmplayer audio;
  AlarmBloc(
    this.audio,
  ) : super(const _Initial()) {
    on<_PlayAlarmEvent>((event, emit) async {
      await audio.Alarm(url: 'assets/audio/warning_alarm.mp3', volume: 100);

      await Future.delayed(
        const Duration(seconds: 1),
        () {
          audio.StopAlarm();
        },
      );
    });
    on<_CorrectAlarmEvent>((event, emit) async {
      await audio.Alarm(url: 'assets/audio/benar_masuk.mp3', volume: 100, looping: false);

      await Future.delayed(
        const Duration(milliseconds: 500),
        () {
          audio.StopAlarm();
        },
      );
    });

    on<_WrongAlarmEvent>((event, emit) async {
      await audio.Alarm(url: 'assets/audio/salah-masuk.mp3', volume: 100, looping: false);
      await Future.delayed(
        const Duration(milliseconds: 500),
        () {
          audio.StopAlarm();
        },
      );
    });
  }
}
