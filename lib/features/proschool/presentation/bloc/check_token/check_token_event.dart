part of 'check_token_bloc.dart';

@freezed
class CheckTokenEvent with _$CheckTokenEvent {
  const factory CheckTokenEvent.started() = _Started;
  const factory CheckTokenEvent.doIdentificate({required SchoolTokenResponseModel? schoolData}) = _DoIdentificate;
  const factory CheckTokenEvent.logout() = _Logout;
}
