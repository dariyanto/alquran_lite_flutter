import 'package:dartz/dartz.dart';

import '../../core/error/exceptions.dart';
import '../../core/error/failures.dart';
import '../../core/network/network_info.dart';
import '../../core/utils/mapper.dart';
import '../../domain/model/ayat_model.dart';
import '../../domain/model/surat_model.dart';
import '../../domain/model/tafsir_model.dart';
import '../../domain/repository/app_repository.dart';
import '../data_source/local/local_data_source.dart';
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
  Future<Either<Failure, List<SuratModel>>> getSurat() async {
    var entities = await localDataSource.getSurat();
    if (entities.isNotEmpty) {
      return Right(entities.map((e) => e.toModel()).toList());
    }

    if (await networkInfo.isConnected) {
      try {
        final responses = await remoteDataSource.getSurat();
        var entities = responses.data!.map((e) => e!.toEntity()).toList();
        await localDataSource.insertSurat(entities);
        return Right(entities.map((e) => e.toModel()).toList());
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
  Future<Either<Failure, SuratModel>> getSuratById(int id) async {
    var entities = await localDataSource.getSuratById(id);
    if (entities != null) {
      return Right(entities.toModel());
    } else {
      return const Left(NoDataFailure(message: "Data tidak ditemukan"));
    }
  }

  @override
  Future<Either<Failure, List<AyatModel>>> getAyat(int suratId) async {
    var entities = await localDataSource.getAyat(suratId);
    if (entities.isNotEmpty) {
      return Right(entities.map((e) => e.toModel()).toList());
    }

    if (await networkInfo.isConnected) {
      try {
        final responses = await remoteDataSource.getAyat(suratId);
        var entities = responses.data!.ayat!.map((e) => e!.toEntity(suratId)).toList();
        await localDataSource.insertAyat(entities);
        return Right(entities.map((e) => e.toModel()).toList());
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
  Future<Either<Failure, AyatModel>> getAyatById(int id) async {
    var entities = await localDataSource.getAyatById(id);
    if (entities != null) {
      return Right(entities.toModel());
    } else {
      return const Left(NoDataFailure(message: "Data tidak ditemukan"));
    }
  }

  @override
  Future<Either<Failure, List<TafsirModel>>> getTafsir(int suratId) async {
    var entities = await localDataSource.getTafsir(suratId);
    if (entities.isNotEmpty) {
      return Right(entities.map((e) => e.toModel()).toList());
    }

    if (await networkInfo.isConnected) {
      try {
        final responses = await remoteDataSource.getTafsir(suratId);
        var entities =
            responses.data!.tafsir!.map((e) => e!.toEntity(suratId)).toList();
        await localDataSource.insertTafsir(entities);
        return Right(entities.map((e) => e.toModel()).toList());
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
  Future<Either<Failure, TafsirModel>> getTafsirById(int id) async {
    var entities = await localDataSource.getTafsirById(id);
    if (entities != null) {
      return Right(entities.toModel());
    } else {
      return const Left(NoDataFailure(message: "Data tidak ditemukan"));
    }
  }

  @override
  Future<Either<Failure, TafsirModel>> getTafsirBySuratAyat(
      int suratId, int ayatId) async {
    var entities = await localDataSource.getTafsirBySuratAyat(suratId, ayatId);
    if (entities != null) {
      return Right(entities.toModel());
    } else {
      return const Left(NoDataFailure(message: "Data tidak ditemukan"));
    }
  }
}
