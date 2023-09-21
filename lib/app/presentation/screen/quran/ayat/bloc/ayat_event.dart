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