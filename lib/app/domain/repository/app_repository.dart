import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../model/ayat_model.dart';
import '../model/surat_model.dart';
import '../model/tafsir_model.dart';

abstract class AppRepository {
  Future<Either<Failure, List<SuratModel>>> getSurat();
  Future<Either<Failure, SuratModel>> getSuratById(int id);
  Future<Either<Failure, List<AyatModel>>> getAyat(int suratId);
  Future<Either<Failure, AyatModel>> getAyatById(int id);
  Future<Either<Failure, List<TafsirModel>>> getTafsir(int suratId);
  Future<Either<Failure, TafsirModel>> getTafsirById(int id);
  Future<Either<Failure, TafsirModel>> getTafsirBySuratAyat(int suratId, int ayatId);
  Future<Either<Failure, bool>> insertBookmarkAyat(int suratId, int ayatId);
  Future<Either<Failure, bool>> insertBookmarkSurat(int suratId);
  Future<Either<Failure, bool>> insertRiwayatAyat(int suratId, int ayatId);
}
