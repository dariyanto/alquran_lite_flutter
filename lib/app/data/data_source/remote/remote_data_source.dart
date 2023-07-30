import 'model/ayat_response.dart';
import 'model/surat_response.dart';
import 'model/tafsir_response.dart';

abstract class RemoteDataSource {
  Future<SuratResponse> getSurat();
  Future<AyatResponse> getAyat(int id);
  Future<TafsirResponse> getTafsir(int id);
}
