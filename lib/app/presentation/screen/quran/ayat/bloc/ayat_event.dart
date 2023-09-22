part of 'ayat_bloc.dart';

sealed class AyatEvent extends Equatable {
  const AyatEvent();

  @override
  List<Object> get props => [];
}


class FetchAyatRequested extends AyatEvent {
  final int suratId;
  const FetchAyatRequested({required this.suratId});

  @override
  List<Object> get props => [];
}

class InsertBookmarkAyatRequested extends AyatEvent {
  final int suratId;
  final int ayatId;
  const InsertBookmarkAyatRequested({required this.suratId, required this.ayatId});

  @override
  List<Object> get props => [];
}

class InsertBookmarkSuratRequested extends AyatEvent {
  final int suratId;
  const InsertBookmarkSuratRequested({required this.suratId});

  @override
  List<Object> get props => [];
}

class InsertRiwayatAyatRequested extends AyatEvent {
  final int suratId;
  final int ayatId;
  const InsertRiwayatAyatRequested({required this.suratId, required this.ayatId});

  @override
  List<Object> get props => [];
}