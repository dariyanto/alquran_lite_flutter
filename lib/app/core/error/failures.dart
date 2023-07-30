import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure({required String message}) : super(message: message);
}

class CacheFailure extends Failure {
  const CacheFailure({required String message}) : super(message: message);
}

class NetworkFailure extends Failure {
  const NetworkFailure({required String message}) : super(message: message);
}

class UnknownFailure extends Failure {
  const UnknownFailure({required String message}) : super(message: message);
}

class NoConnectionFailure extends Failure {
  const NoConnectionFailure({required String message}) : super(message: message);
}

class TimeoutFailure extends Failure {
  const TimeoutFailure({required String message}) : super(message: message);
}

class PermissionFailure extends Failure {
  const PermissionFailure({required String message}) : super(message: message);
}
