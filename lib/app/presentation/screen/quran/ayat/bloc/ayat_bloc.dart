import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../domain/model/ayat_model.dart';
import '../../../../../domain/repository/app_repository.dart';

part 'ayat_event.dart';
part 'ayat_state.dart';

class AyatBloc extends Bloc<AyatEvent, AyatState> {
  final AppRepository repository;

  AyatBloc(this.repository) : super(AyatInitial()) {
    on<AyatEvent>((event, emit) async {
      if (event is AyatFetchRequested) {
        await _mapAyatFetchRequestedToState(event, emit);
      } else if (event is ToggleAyatBookmarkRequested) {
        await _mapToggleAyatBookmarkRequestedToState(event, emit);
      } else if (event is ToggleSuratBookmarkRequested) {
        await _mapToggleSuratBookmarkRequestedToState(event, emit);
      }
    });
  }

  Future<void> _mapAyatFetchRequestedToState(
      AyatFetchRequested event, Emitter<AyatState> emit) async {
    var res = await repository.getAyat(int.parse(event.suratId));
    res.fold((l) {
      emit(AyatError(l.message));
    }, (r) {
      emit(AyatLoaded(r));
    });
  }

  Future<void> _mapToggleAyatBookmarkRequestedToState(
      ToggleAyatBookmarkRequested event, Emitter<AyatState> emit) async {
    var res = await repository.toggleBookmarkAyat(
        int.parse(event.suratId), int.parse(event.ayatId));
    res.fold((l) {
      emit(AyatError(l.message));
    }, (r) {
      // emit(AyatLoaded(r));
    });
  }

  Future<void> _mapToggleSuratBookmarkRequestedToState(
      ToggleSuratBookmarkRequested event, Emitter<AyatState> emit) async {
    var res = await repository.toogleBookmarkSurat(int.parse(event.suratId));
    res.fold((l) {
      emit(AyatError(l.message));
    }, (r) {
      // emit(AyatLoaded(r));
    });
  }
}
