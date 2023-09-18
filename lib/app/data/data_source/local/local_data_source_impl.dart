import 'package:alquran_lite_flutter/app/core/services/app_database.dart';

import 'local_data_source.dart';
import 'model/ayat_entity.dart';
import 'model/bookmark_entity.dart';
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
  Future<void> insertBookmark(int suratId, int ayatId) async {
    var bookmark = Bookmark.optional(suratId: suratId, ayatId: ayatId);
    await db.bookmarkDao.insertBookmark(bookmark);
  }

  @override
  Future<List<Bookmark>> getBookmark() async {
    return await db.bookmarkDao.findAllBookmark();
  }

  @override
  Future<void> deleteBookmark(int suratId, int ayatId) async {
    return await db.bookmarkDao.deleteBookmarkBySuratIdAndAyatId(suratId, ayatId);
  }

  @override
  Future<void> deleteAllBookmark() async {
    return await db.bookmarkDao.deleteAllBookmark();
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
}
