part of 'ayat_bloc.dart';

sealed class AyatEvent extends Equatable {
  const AyatEvent();

  @override
  List<Object> get props => [];
}


class FetchedAyat extends AyatEvent {
  const FetchedAyat();

  @override
  List<Object> get props => [];
}