// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proschool/features/identificate/data/datasources/local_school_datasource.dart';

import 'package:proschool/features/identificate/data/models/response/school_token_response_model.dart';

part 'check_token_bloc.freezed.dart';
part 'check_token_event.dart';
part 'check_token_state.dart';

class CheckTokenBloc extends Bloc<CheckTokenEvent, CheckTokenState> {
  SchoolTokenResponseModel schoolData;
  CheckTokenBloc(
    this.schoolData,
  ) : super(const _Initial()) {
    on<_DoIdentificate>((event, emit) {
      emit(const CheckTokenState.loading());
      if (event.schoolData != null) {
        schoolData = event.schoolData ?? SchoolTokenResponseModel();
        emit(CheckTokenState.identificate(schoolData: event.schoolData ?? SchoolTokenResponseModel()));
      } else {
        emit(const CheckTokenState.unidentificate());
      }
    });

    on<_Logout>(
      (event, emit) async {
        emit(const CheckTokenState.loading());
        await IdentificateLocalDatasource().removeToken();
      },
    );
  }
}
