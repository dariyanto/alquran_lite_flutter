part of 'ayat_bloc.dart';

sealed class AyatEvent extends Equatable {
  const AyatEvent();

  @override
  List<Object> get props => [];
}


class AyatFetchRequested extends AyatEvent {
  final String suratId;
  const AyatFetchRequested({required this.suratId});

  @override
  List<Object> get props => [];
}

class ToggleAyatBookmarkRequested extends AyatEvent {
  final String suratId;
  final String ayatId;
  const ToggleAyatBookmarkRequested({required this.suratId, required this.ayatId});

  @override
  List<Object> get props => [];
}

class ToggleSuratBookmarkRequested extends AyatEvent {
  final String suratId;
  const ToggleSuratBookmarkRequested({required this.suratId});

  @override
  List<Object> get props => [];
}

class InsertRiwayatAyatRequested extends AyatEvent {
  final String suratId;
  final String ayatId;
  const InsertRiwayatAyatRequested({required this.suratId, required this.ayatId});

  @override
  List<Object> get props => [];
}