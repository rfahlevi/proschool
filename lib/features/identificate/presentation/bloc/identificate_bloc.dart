// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:proschool/features/identificate/data/models/response/school_token_response_model.dart';
import 'package:proschool/features/identificate/data/repositories/school_repositories.dart';

part 'identificate_bloc.freezed.dart';
part 'identificate_event.dart';
part 'identificate_state.dart';

class IdentificateBloc extends Bloc<IdentificateEvent, IdentificateState> {
  SchoolRepositories schoolRepositories;
  SchoolTokenResponseModel school;
  IdentificateBloc(
    this.schoolRepositories,
    this.school,
  ) : super(const _Initial()) {
    on<_DoIdentificate>((event, emit) async {
      emit(const IdentificateState.loading());

      try {
        var result = await schoolRepositories.identificateSchool(event.schoolToken);

        result.fold((error) => emit(IdentificateState.error(error: error)), (data) {
          school = data;
          emit(IdentificateState.success(school: data));
        });
      } catch (e) {
        emit(IdentificateState.error(error: e.toString()));
      }
    });
  }
}
