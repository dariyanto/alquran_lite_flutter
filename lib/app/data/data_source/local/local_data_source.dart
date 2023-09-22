import 'package:alquran_lite_flutter/app/data/data_source/local/model/statistik_entity.dart';

import 'model/ayat_entity.dart';
import 'model/bookmark_ayat_entity.dart';
import 'model/bookmark_surat_entity.dart';
import 'model/riwayat_entity.dart';
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

  Future<void> insertBookmarkAyat(int suratId, int ayatId);
  Future<List<BookmarkAyat>> getBookmarkAyat();
  Future<void> deleteBookmarkAyat(int suratId, int ayatId);
  Future<void> deleteAllBookmarkAyat();

  Future<void> insertBookmarkSurat(int suratId);
  Future<List<BookmarkSurat>> getBookmarkSurat();
  Future<void> deleteBookmarkSurat(int suratId);
  Future<void> deleteAllBookmarkSurat();

  Future<void> insertRiwayat(int suratId, int ayatId);
  Future<List<Riwayat>> getRiwayat();
  Future<void> deleteRiwayat(int suratId, int ayatId);
  Future<void> deleteAllRiwayat();

  Future<void> insertStatistik(int suratId, int ayatId);
  Future<List<Statistik>> getStatistik();
  Future<void> deleteStatistik(int suratId, int ayatId);
  Future<void> deleteAllStatistik();
}
