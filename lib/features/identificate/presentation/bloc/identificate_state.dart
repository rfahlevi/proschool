part of 'identificate_bloc.dart';

@freezed
class IdentificateState with _$IdentificateState {
  const factory IdentificateState.initial() = _Initial;
  const factory IdentificateState.loading() = _Loading;
  const factory IdentificateState.success({required SchoolTokenResponseModel school}) = _School;
  const factory IdentificateState.error({required String error}) = _Error;
}
