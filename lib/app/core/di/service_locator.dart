import 'package:flutter/foundation.dart';

import '../network/network_info.dart';
import '../../data/repository/app_repository_impl.dart';
import '../../domain/repository/app_repository.dart';
import '../../persentation/screen/quran/ayat/bloc/ayat_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

import '../../data/data_source/local/local_data_source.dart';
import '../../data/data_source/local/local_data_source_impl.dart';
import '../../data/data_source/remote/remote_data_source.dart';
import '../../data/data_source/remote/remote_data_source_impl.dart';
import '../../persentation/screen/quran/surat/bloc/surat_bloc.dart';
import '../services/app_database.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));

  HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
    HttpLogger(logLevel: kReleaseMode ? LogLevel.NONE : LogLevel.BODY ),
  ]);

  sl.registerLazySingleton(() => http);

  final db = await $FloorAppDatabase.databaseBuilder('app_database.db').build();

  sl.registerLazySingleton(() => db);

  sl.registerLazySingleton<LocalDataSource>(
      () => LocalDataSourceImpl(db: sl()));

  sl.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(http: sl()));

  sl.registerLazySingleton<AppRepository>(
    () => AppRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerFactory(() => SuratBloc(sl()));
  sl.registerFactory(() => AyatBloc(sl()));
}
