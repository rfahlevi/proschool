part of 'check_token_bloc.dart';

@freezed
class CheckTokenState with _$CheckTokenState {
  const factory CheckTokenState.initial() = _Initial;
  const factory CheckTokenState.identificate({required SchoolTokenResponseModel schoolData}) = _Identificate;
  const factory CheckTokenState.unidentificate() = _Unidentificate;
  const factory CheckTokenState.loading() = _Loading;
}
