import 'package:alquran_lite_flutter/app/domain/model/surat_model.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../data/data_source/remote/model/ayat_response.dart';
import '../../data/data_source/remote/model/tafsir_response.dart';

abstract class AppRepository {
  Future<Either<Failure, List<SuratModel>>> getSurat();
  Future<Either<Failure, AyatResponse>> getAyat(int id);
  Future<Either<Failure, TafsirResponse>> getTafsir(int id);
}
