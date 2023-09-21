part of 'surat_bloc.dart';

sealed class SuratEvent extends Equatable {
  const SuratEvent();

  @override
  List<Object> get props => [];
}

class SuratFetchRequested extends SuratEvent {
  const SuratFetchRequested();

  @override
  List<Object> get props => [];
}
