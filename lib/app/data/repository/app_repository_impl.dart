import 'package:dartz/dartz.dart';

import '../../core/error/exceptions.dart';
import '../../core/error/failures.dart';
import '../../core/network/network_info.dart';
import '../../domain/repository/app_repository.dart';
import '../data_source/local/local_data_source.dart';
import '../data_source/remote/model/ayat_response.dart';
import '../data_source/remote/model/surat_response.dart';
import '../data_source/remote/model/tafsir_response.dart';
import '../data_source/remote/remote_data_source.dart';

class AppRepositoryImpl extends AppRepository {
  RemoteDataSource remoteDataSource;
  LocalDataSource localDataSource;
  NetworkInfo networkInfo;

  AppRepositoryImpl(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo})
      : super();

  @override
  Future<Either<Failure, SuratResponse>> getSurat() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getSurat();

        return Right(remoteData);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on TimeoutException catch (e) {
        return Left(TimeoutFailure(message: e.message));
      }
    } else {
      return const Left(
          NoConnectionFailure(message: "Tidak terhubung ke internet"));
    }
  }

  @override
  Future<Either<Failure, AyatResponse>> getAyat(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getAyat(id);

        return Right(remoteData);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on TimeoutException catch (e) {
        return Left(TimeoutFailure(message: e.message));
      }
    } else {
      return const Left(
          NoConnectionFailure(message: "Tidak terhubung ke internet"));
    }
  }

  @override
  Future<Either<Failure, TafsirResponse>> getTafsir(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getTafsir(id);

        return Right(remoteData);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on TimeoutException catch (e) {
        return Left(TimeoutFailure(message: e.message));
      }
    } else {
      return const Left(
          NoConnectionFailure(message: "Tidak terhubung ke internet"));
    }
  }

  
}
