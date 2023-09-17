import 'package:isar/isar.dart';

import 'local_data_source.dart';
import 'model/ayat_entity.dart';
import 'model/bookmark_entity.dart';
import 'model/riwayat_entity.dart';
import 'model/surat_entity.dart';
import 'model/tafsir_entity.dart';

class LocalDataSourceImpl extends LocalDataSource {
  final Isar db;
  LocalDataSourceImpl({required this.db});

  @override
  Future<List<Surat>> getSurat() async {
    return await db.surats.where().findAll();
  }

  @override
  Future<Surat?> getSuratById(int id) async {
    return await db.surats.where().filter().idEqualTo(id).findFirst();
  }

  @override
  Future<void> insertSurat(List<Surat> surat) async {
    await db.writeTxn(() async {
      await db.surats.clear();
      await db.surats.putAll(surat);
    });
  }

  @override
  Future<List<Ayat>> getAyat(int suratId) async {
    return await db.ayats.where().filter().suratIdEqualTo(suratId).findAll();
  }

  @override
  Future<Ayat?> getAyatById(int id) async {
    return await db.ayats.where().filter().idEqualTo(id).findFirst();
  }

  @override
  Future<void> insertAyat(List<Ayat> ayat) async {
    await db.writeTxn(() async {
      await db.ayats.putAll(ayat);
    });
  }

  @override
  Future<List<Tafsir>> getTafsir(int suratId) async {
    return await db.tafsirs.where().filter().suratIdEqualTo(suratId).findAll();
  }
  
  @override
  Future<Tafsir?> getTafsirById(int id) async {
    return await db.tafsirs.where().filter().idEqualTo(id).findFirst();
  }

  @override
  Future<void> insertTafsir(List<Tafsir> tafsir) async {
    await db.writeTxn(() async {
      await db.tafsirs.putAll(tafsir);
    });
  }

  @override
  Future<Tafsir?> getTafsirBySuratAyat(int suratId, int ayatId) async {
    return await db.tafsirs.where().filter().suratIdEqualTo(suratId).and().ayatIdEqualTo(ayatId).findFirst();
  }

  @override
  Future<void> insertBookmark(int suratId, int ayatId) async {
    await db.writeTxn(() async {
      await db.bookmarks.put(Bookmark(suratId: suratId, ayatId: ayatId));
    });
  }

  @override
  Future<List<Bookmark>> getBookmark() async {
    return await db.bookmarks.where().findAll();
  }

  @override
  Future<void> deleteBookmark(int suratId, int ayatId) async {
    await db.writeTxn(() async {
      await db.bookmarks.where().filter().suratIdEqualTo(suratId).and().ayatIdEqualTo(ayatId).deleteFirst();
    });
  }

  @override
  Future<void> deleteAllBookmark() async {
    await db.writeTxn(() async {
      await db.bookmarks.clear();
    });
  }

  @override
  Future<void> insertRiwayat(int suratId, int ayatId) async {
    await db.writeTxn(() async {
      await db.riwayats.put(Riwayat(suratId: suratId, ayatId: ayatId));
    });
  }

  @override
  Future<List<Riwayat>> getRiwayat() async {
    return await db.riwayats.where().findAll();
  }

  @override
  Future<void> deleteRiwayat(int suratId, int ayatId) async {
    await db.writeTxn(() async {
      await db.riwayats.where().filter().suratIdEqualTo(suratId).and().ayatIdEqualTo(ayatId).deleteFirst();
    });
  }

  @override
  Future<void> deleteAllRiwayat() async {
    await db.writeTxn(() async {
      await db.riwayats.clear();
    });
  }
}
