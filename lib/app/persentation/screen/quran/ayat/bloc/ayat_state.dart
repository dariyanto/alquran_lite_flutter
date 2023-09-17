part of 'ayat_bloc.dart';

sealed class AyatState extends Equatable {
  const AyatState();
  
  @override
  List<Object> get props => [];
}

final class AyatInitial extends AyatState {}

final class AyatLoading extends AyatState {}

final class AyatLoaded extends AyatState {
  final List<AyatModel> ayats;

  const AyatLoaded(this.ayats);

  @override
  List<Object> get props => [ayats];
}

final class AyatError extends AyatState {
  final String message;

  const AyatError(this.message);

  @override
  List<Object> get props => [message];
}

