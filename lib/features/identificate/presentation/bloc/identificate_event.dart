part of 'identificate_bloc.dart';

@freezed
class IdentificateEvent with _$IdentificateEvent {
  const factory IdentificateEvent.started() = _Started;
  const factory IdentificateEvent.doIdentificate({required String schoolToken}) = _DoIdentificate;
}
