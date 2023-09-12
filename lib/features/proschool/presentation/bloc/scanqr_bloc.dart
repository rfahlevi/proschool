import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanqr_event.dart';
part 'scanqr_state.dart';
part 'scanqr_bloc.freezed.dart';

class ScanqrBloc extends Bloc<ScanqrEvent, ScanqrState> {
  bool? allowedEntry;
  bool? deniedEntry;
  bool? allowedOut;
  bool? deniedOut;
  ScanqrBloc() : super(const _Initial()) {
    on<ScanqrEvent>((event, emit) {});
  }
}
