import 'package:alquran_lite_flutter/app/data/data_source/local/model/statistik_entity.dart';

import '../../../core/services/app_database.dart';

import 'local_data_source.dart';
import 'model/ayat_entity.dart';
import 'model/bookmark_ayat_entity.dart';
import 'model/bookmark_surat_entity.dart';
import 'model/riwayat_entity.dart';
import 'model/surat_entity.dart';
import 'model/tafsir_entity.dart';

class LocalDataSourceImpl extends LocalDataSource {
  final AppDatabase db;
  LocalDataSourceImpl({required this.db});

  @override
  Future<List<Surat>> getSurat() async {
    return await db.suratDao.findAllSurat();
  }

  @override
  Future<Surat?> getSuratById(int id) async {
    return await db.suratDao.findSuratById(id);
  }

  @override
  Future<void> insertSurat(List<Surat> surat) async {
    await db.suratDao.insertSurats(surat);
  }

  @override
  Future<List<Ayat>> getAyat(int suratId) async {
    return await db.ayatDao.findAllAyatBySuratId(suratId);
  }

  @override
  Future<Ayat?> getAyatById(int id) async {
    return await db.ayatDao.findAyatById(id);
  }

  @override
  Future<void> insertAyat(List<Ayat> ayat) async {
    await db.ayatDao.insertAyats(ayat);
  }

  @override
  Future<List<Tafsir>> getTafsir(int suratId) async {
    return await db.tafsirDao.findAllTafsirBySuratId(suratId);
  }
  
  @override
  Future<Tafsir?> getTafsirById(int id) async {
    return await db.tafsirDao.findTafsirById(id);
  }

  @override
  Future<void> insertTafsir(List<Tafsir> tafsir) async {
    await db.tafsirDao.insertTafsirs(tafsir);
  }

  @override
  Future<Tafsir?> getTafsirBySuratAyat(int suratId, int ayatId) async {
    return await db.tafsirDao.findTafsirBySuratIdAndAyatId(suratId, ayatId);
  }

  @override
  Future<bool> isBookmarkAyat(int suratId, int ayatId) async {
    return await db.bookmarkAyatDao.isBookmark(suratId, ayatId) ?? false;
  }

  @override
  Future<void> insertBookmarkAyat(int suratId, int ayatId) async {
    var bookmark = BookmarkAyat.optional(suratId: suratId, ayatId: ayatId);
    await db.bookmarkAyatDao.insertBookmark(bookmark);
  }

  @override
  Future<List<BookmarkAyat>> getBookmarkAyat() async {
    return await db.bookmarkAyatDao.findAllBookmark();
  }

  @override
  Future<void> deleteBookmarkAyat(int suratId, int ayatId) async {
    return await db.bookmarkAyatDao.deleteBookmarkBySuratIdAndAyatId(suratId, ayatId);
  }

  @override
  Future<void> deleteAllBookmarkAyat() async {
    return await db.bookmarkAyatDao.deleteAllBookmark();
  }

  @override
  Future<bool> isBookmarkSurat(int suratId) async {
    return await db.bookmarkSuratDao.isBookmark(suratId) ?? false;
  }

  @override
  Future<void> insertBookmarkSurat(int suratId) async {
    var bookmark = BookmarkSurat.optional(suratId: suratId);
    await db.bookmarkSuratDao.insertBookmark(bookmark);
  }

  @override
  Future<List<BookmarkSurat>> getBookmarkSurat() async {
    return await db.bookmarkSuratDao.findAllBookmark();
  }

  @override
  Future<void> deleteBookmarkSurat(int suratId) async {
    return await db.bookmarkSuratDao.deleteBookmarkBySuratIdAndAyatId(suratId);
  }

  @override
  Future<void> deleteAllBookmarkSurat() async {
    return await db.bookmarkSuratDao.deleteAllBookmark();
  }

  @override
  Future<void> insertRiwayat(int suratId, int ayatId) async {
    var riwayat = Riwayat.optional(suratId: suratId, ayatId: ayatId);
    await db.riwayatDao.insertRiwayat(riwayat);
  }

  @override
  Future<List<Riwayat>> getRiwayat() async {
    return await db.riwayatDao.findAllRiwayat();
  }

  @override
  Future<void> deleteRiwayat(int suratId, int ayatId) async {
    return await db.riwayatDao.deleteRiwayatBySuratIdAndAyatId(suratId, ayatId);
  }

  @override
  Future<void> deleteAllRiwayat() async {
    return await db.riwayatDao.deleteAllRiwayat();
  }

  @override
  Future<void> insertStatistik(int suratId, int ayatId) async {
    var statistik = Statistik.optional(suratId: suratId, ayatId: ayatId);
    await db.statistikDao.insertStatistik(statistik);
  }

  @override
  Future<List<Statistik>> getStatistik() async {
    return await db.statistikDao.findAllStatistik();
  }

  @override
  Future<void> deleteStatistik(int suratId, int ayatId) async {
    return await db.statistikDao.deleteStatistikBySuratIdAndAyatId(suratId, ayatId);
  }

  @override
  Future<void> deleteAllStatistik() async {
    return await db.statistikDao.deleteAllStatistik();
  }
}
