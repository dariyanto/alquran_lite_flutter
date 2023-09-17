import 'package:alquran_lite_flutter/app/domain/model/ayat_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../domain/repository/app_repository.dart';

part 'ayat_event.dart';
part 'ayat_state.dart';

class AyatBloc extends Bloc<AyatEvent, AyatState> {
  final AppRepository repository;

  AyatBloc(this.repository) : super(AyatInitial()) {
    on<AyatEvent>((event, emit) {
      if(event is FetchedAyat) {
        _mapFetchedAyatToState(emit);
      }
    });
  }
  
  void _mapFetchedAyatToState(Emitter<AyatState> emit) async {
    emit(AyatLoading());
    var res = await repository.getAyat(1);
    res.fold((l) {
      emit(AyatError(l.message));
    }, (r) {
      emit(AyatLoaded(r));
    });
  }
}
