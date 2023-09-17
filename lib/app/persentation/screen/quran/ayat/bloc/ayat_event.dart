part of 'ayat_bloc.dart';

sealed class AyatEvent extends Equatable {
  const AyatEvent();

  @override
  List<Object> get props => [];
}


class FetchedAyat extends AyatEvent {
  final String suratId;
  const FetchedAyat({required this.suratId});

  @override
  List<Object> get props => [];
}