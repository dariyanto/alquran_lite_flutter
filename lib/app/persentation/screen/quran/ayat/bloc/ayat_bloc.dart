import 'package:alquran_lite_flutter/app/domain/model/ayat_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../domain/model/surat_model.dart';
import '../../../../../domain/repository/app_repository.dart';

part 'ayat_event.dart';
part 'ayat_state.dart';

class AyatBloc extends Bloc<AyatEvent, AyatState> {
  final AppRepository repository;

  AyatBloc(this.repository) : super(AyatInitial()) {
    on<AyatEvent>((event, emit) async {
      if (event is FetchedAyat) {
        await _mapFetchedAyatToState(event,emit);
      }
    });
  }
  
  Future<void> _mapFetchedAyatToState(FetchedAyat event, Emitter<AyatState> emit) async{
    var res = await repository.getAyat(int.parse(event.suratId));
    res.fold((l) {
      emit(AyatError(l.message));
    }, (r) {
      emit(AyatLoaded(r));
    });
  }
}
