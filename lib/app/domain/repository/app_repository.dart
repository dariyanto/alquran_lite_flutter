import 'package:alquran_lite_flutter/app/domain/model/ayat_model.dart';
import 'package:alquran_lite_flutter/app/domain/model/surat_model.dart';
import 'package:alquran_lite_flutter/app/domain/model/tafsir_model.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';

abstract class AppRepository {
  Future<Either<Failure, List<SuratModel>>> getSurat();
  Future<Either<Failure, SuratModel>> getSuratById(int id);
  Future<Either<Failure, List<AyatModel>>> getAyat(int suratId);
  Future<Either<Failure, AyatModel>> getAyatById(int id);
  Future<Either<Failure, List<TafsirModel>>> getTafsir(int suratId);
  Future<Either<Failure, TafsirModel>> getTafsirById(int id);
  Future<Either<Failure, TafsirModel>> getTafsirBySuratAyat(int suratId, int ayatId);
}
