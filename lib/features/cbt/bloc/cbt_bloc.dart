// ignore_for_file: unrelated_type_equality_checks

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kiosk_mode/kiosk_mode.dart';

part 'cbt_event.dart';
part 'cbt_state.dart';
part 'cbt_bloc.freezed.dart';

class CbtBloc extends Bloc<CbtEvent, CbtState> {
  bool isLocked = false;
  CbtBloc() : super(const _Initial()) {
    on<_LockScreen>((event, emit) async {
      emit(const CbtState.loading());
      await startKioskMode();
      await Future.delayed(
        const Duration(seconds: 5),
        () {
          watchKioskMode().listen(
            (event) async {
              if (event == KioskMode.disabled) {
                isLocked = false;
              } else {
                isLocked = true;
              }
            },
          );
        },
      );

      await Future.delayed(
        const Duration(seconds: 0),
        () {
          if (isLocked) {
            emit(const CbtState.locked());
          } else {
            emit(const CbtState.noResponse());
          }
        },
      );
    });

    on<_UnlockScreen>((event, emit) async {
      await stopKioskMode();
      emit(const CbtState.loading());
      await Future.delayed(
        const Duration(seconds: 3),
        () {
          watchKioskMode().listen(
            (event) async {
              if (event == KioskMode.disabled) {
                isLocked = false;
              } else {
                isLocked = true;
              }
            },
          );
        },
      );

      await Future.delayed(
        const Duration(seconds: 0),
        () {
          if (isLocked == true) {
            emit(const CbtState.locked());
          } else {
            emit(const CbtState.unlocked());
          }
        },
      );
    });
  }
}
