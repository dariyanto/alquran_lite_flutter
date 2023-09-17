import '../network/network_info.dart';
import '../../data/repository/app_repository_impl.dart';
import '../../domain/repository/app_repository.dart';
import '../../persentation/screen/quran/ayat/bloc/ayat_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

import '../../data/data_source/local/local_data_source.dart';
import '../../data/data_source/local/local_data_source_impl.dart';
import '../../data/data_source/local/model/ayat_entity.dart';
import '../../data/data_source/local/model/bookmark_entity.dart';
import '../../data/data_source/local/model/riwayat_entity.dart';
import '../../data/data_source/local/model/surat_entity.dart';
import '../../data/data_source/local/model/tafsir_entity.dart';
import '../../data/data_source/remote/remote_data_source.dart';
import '../../data/data_source/remote/remote_data_source_impl.dart';
import '../../persentation/screen/quran/surat/bloc/surat_bloc.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));

  HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
    HttpLogger(logLevel: LogLevel.BODY),
  ]);

  sl.registerLazySingleton(() => http);

  final dir = await getApplicationDocumentsDirectory();
  await Isar.open(
    [SuratSchema, AyatSchema, TafsirSchema, BookmarkSchema, RiwayatSchema],
    directory: dir.path,
  );
  final db = Isar.getInstance()!;

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
