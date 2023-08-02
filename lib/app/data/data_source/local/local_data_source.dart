
import 'model/ayat_entity.dart';
import 'model/surat_entity.dart';
import 'model/tafsir_entity.dart';

abstract class LocalDataSource {
  Future<List<Surat>> getSurat();
  Future<void> insertSurat(List<Surat> surat);

  Future<List<Ayat>> getAyat();
  Future<void> insertAyat(List<Ayat> ayat);

  Future<List<Tafsir>> getTafsir();
  Future<void> insertTafsir(List<Tafsir> tafsir);
}