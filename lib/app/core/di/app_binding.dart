import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:isar/isar.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

import '../../data/data_source/local/local_data_source.dart';
import '../../data/data_source/local/local_data_source_impl.dart';
import '../../data/data_source/remote/remote_data_source.dart';
import '../../data/data_source/remote/remote_data_source_impl.dart';
import '../../data/repository/app_repository_impl.dart';
import '../../domain/repository/app_repository.dart';
import '../network/network_info.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InternetConnectionChecker());
    Get.put<NetworkInfo>(NetworkInfoImpl(connectionChecker: Get.find()));

    HttpWithMiddleware client = HttpWithMiddleware.build(middlewares: [
      HttpLogger(logLevel: LogLevel.BODY),
    ]);

    Get.put(client);

    Get.put<RemoteDataSource>(RemoteDataSourceImpl(client: Get.find()));

    Get.put(Isar.getInstance()!);
    Get.put(GetStorage());
    Get.put<LocalDataSource>(LocalDataSourceImpl(isar: Get.find()));

    Get.put<AppRepository>(AppRepositoryImpl(
        remoteDataSource: Get.find(),
        localDataSource: Get.find(),
        networkInfo: Get.find()));
  }
}
