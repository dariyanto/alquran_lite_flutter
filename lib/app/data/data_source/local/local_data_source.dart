
import 'model/ayat_entity.dart';
import 'model/surat_entity.dart';
import 'model/tafsir_entity.dart';

abstract class LocalDataSource {
  Future<List<Surat>> getSurat();
  Future<Surat?> getSuratById(int id);
  Future<void> insertSurat(List<Surat> surat);

  Future<List<Ayat>> getAyat(int suratId);
  Future<Ayat?> getAyatById(int id);
  Future<void> insertAyat(List<Ayat> ayat);

  Future<List<Tafsir>> getTafsir(int suratId);
  Future<Tafsir?> getTafsirById(int id);
  Future<void> insertTafsir(List<Tafsir> tafsir);

  Future<Tafsir?> getTafsirBySuratAyat(int suratId, int ayatId);
}