import '../../../../../domain/model/surat_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../domain/repository/app_repository.dart';

part 'surat_event.dart';
part 'surat_state.dart';

class SuratBloc extends Bloc<SuratEvent, SuratState> {
  final AppRepository repository;
  SuratBloc(this.repository) : super(SuratInitial()) {
    on<SuratEvent>((event, emit) async {
      if (event is SuratFetchRequested) {
        await _mapSuratFetchRequestedToState(emit);
      }
    });
  }
  
  Future<void> _mapSuratFetchRequestedToState(Emitter<SuratState> emit) async{
    var res = await repository.getSurat();
    res.fold((l) {
      emit(SuratError(l.message));
    }, (r) {
      emit(SuratLoaded(r));
    });
  }
}
