part of 'cbt_bloc.dart';

@freezed
class CbtState with _$CbtState {
  const factory CbtState.initial() = _Initial;
  const factory CbtState.loading() = _Loading;
  const factory CbtState.locked() = _Locked;
  const factory CbtState.unlocked() = _Unlocked;
  const factory CbtState.noResponse() = _NoResponse;
}
