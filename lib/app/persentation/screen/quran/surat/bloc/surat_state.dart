part of 'surat_bloc.dart';

sealed class SuratState extends Equatable {
  const SuratState();
  
  @override
  List<Object> get props => [];
}

final class SuratInitial extends SuratState {}

final class SuratLoaded extends SuratState {
  final List<SuratModel> surats;

  const SuratLoaded(this.surats);

  @override
  List<Object> get props => [surats];
}

final class SuratError extends SuratState {
  final String message;

  const SuratError(this.message);

  @override
  List<Object> get props => [message];
}
