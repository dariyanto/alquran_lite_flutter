part of 'surat_bloc.dart';

sealed class SuratEvent extends Equatable {
  const SuratEvent();

  @override
  List<Object> get props => [];
}

class FetchedSurat extends SuratEvent {
  const FetchedSurat();

  @override
  List<Object> get props => [];
}
