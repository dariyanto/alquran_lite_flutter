class ServerException implements Exception {
  final String message;
  ServerException({required this.message});
}

class CacheException implements Exception {
  final String message;
  CacheException({required this.message});
}

class TimeoutException implements Exception {
  final String message;
  TimeoutException({required this.message});
}
