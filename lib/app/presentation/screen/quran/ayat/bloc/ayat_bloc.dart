import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../domain/model/ayat_model.dart';
import '../../../../../domain/repository/app_repository.dart';

part 'ayat_event.dart';
part 'ayat_state.dart';

class AyatBloc extends Bloc<AyatEvent, AyatState> {
  final AppRepository repository;

  AyatBloc(this.repository) : super(AyatInitial()) {
    on<AyatEvent>((event, emit) async {
      if (event is FetchAyatRequested) {
        await _mapFetchAyatRequestedToState(event, emit);
      } else if (event is InsertBookmarkAyatRequested) {
        await _mapBookmarkAyatRequestedToState(event, emit);
      } else if (event is InsertBookmarkSuratRequested) {
        await _mapInsertBookmarkSuratRequestedToState(event, emit);
      } else if (event is InsertRiwayatAyatRequested) {
        await _mapInsertRiwayatAyatRequestedToState(event, emit);
      }
    });
  }

  Future<void> _mapFetchAyatRequestedToState(
      FetchAyatRequested event, Emitter<AyatState> emit) async {
    var res = await repository.getAyat(event.suratId);
    res.fold((l) {
      emit(AyatError(l.message));
    }, (r) {
      emit(AyatLoaded(r));
    });
  }

  Future<void> _mapBookmarkAyatRequestedToState(
      InsertBookmarkAyatRequested event, Emitter<AyatState> emit) async {
    var res = await repository.insertBookmarkAyat(
        event.suratId, event.ayatId);
    res.fold((l) {
      debugPrint(l.message);
      // emit(AyatError(l.message));
    }, (r) {
      debugPrint(r.toString());
      // emit(AyatLoaded(r));
    });
  }

  Future<void> _mapInsertBookmarkSuratRequestedToState(
      InsertBookmarkSuratRequested event, Emitter<AyatState> emit) async {
    var res = await repository.insertBookmarkSurat(event.suratId);
    res.fold((l) {
      debugPrint(l.message);
      // emit(AyatError(l.message));
    }, (r) {
      debugPrint(r.toString());
      // emit(AyatLoaded(r));
    });
  }

  Future<void> _mapInsertRiwayatAyatRequestedToState(
      InsertRiwayatAyatRequested event, Emitter<AyatState> emit) async {
    var res = await repository.insertRiwayatAyat(
        event.suratId, event.ayatId);
    res.fold((l) {
      debugPrint(l.message);
      // emit(AyatError(l.message));
    }, (r) {
      debugPrint(r.toString());
      // emit(AyatLoaded(r));
    });
  }
}
