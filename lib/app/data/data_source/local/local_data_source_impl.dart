import 'package:alquran_lite_flutter/app/data/data_source/local/model/bookmark_entity.dart';
import 'package:isar/isar.dart';

import 'local_data_source.dart';
import 'model/ayat_entity.dart';
import 'model/riwayat_entity.dart';
import 'model/surat_entity.dart';
import 'model/tafsir_entity.dart';

class LocalDataSourceImpl extends LocalDataSource {
  final Isar isar;
  LocalDataSourceImpl({required this.isar});

  @override
  Future<List<Surat>> getSurat() async {
    return await isar.surats.where().findAll();
  }

  @override
  Future<Surat?> getSuratById(int id) async {
    return await isar.surats.where().filter().idEqualTo(id).findFirst();
  }

  @override
  Future<void> insertSurat(List<Surat> surat) async {
    await isar.writeTxn(() async {
      await isar.surats.clear();
      await isar.surats.putAll(surat);
    });
  }

  @override
  Future<List<Ayat>> getAyat(int suratId) async {
    return await isar.ayats.where().filter().suratIdEqualTo(suratId).findAll();
  }

  @override
  Future<Ayat?> getAyatById(int id) async {
    return await isar.ayats.where().filter().idEqualTo(id).findFirst();
  }

  @override
  Future<void> insertAyat(List<Ayat> ayat) async {
    await isar.writeTxn(() async {
      await isar.ayats.putAll(ayat);
    });
  }

  @override
  Future<List<Tafsir>> getTafsir(int suratId) async {
    return await isar.tafsirs.where().filter().suratIdEqualTo(suratId).findAll();
  }
  
  @override
  Future<Tafsir?> getTafsirById(int id) async {
    return await isar.tafsirs.where().filter().idEqualTo(id).findFirst();
  }

  @override
  Future<void> insertTafsir(List<Tafsir> tafsir) async {
    await isar.writeTxn(() async {
      await isar.tafsirs.putAll(tafsir);
    });
  }

  @override
  Future<Tafsir?> getTafsirBySuratAyat(int suratId, int ayatId) async {
    return await isar.tafsirs.where().filter().suratIdEqualTo(suratId).and().ayatIdEqualTo(ayatId).findFirst();
  }

  @override
  Future<void> insertBookmark(int suratId, int ayatId) async {
    await isar.writeTxn(() async {
      await isar.bookmarks.put(Bookmark(suratId: suratId, ayatId: ayatId));
    });
  }

  @override
  Future<List<Bookmark>> getBookmark() async {
    return await isar.bookmarks.where().findAll();
  }

  @override
  Future<void> deleteBookmark(int suratId, int ayatId) async {
    await isar.writeTxn(() async {
      await isar.bookmarks.where().filter().suratIdEqualTo(suratId).and().ayatIdEqualTo(ayatId).deleteFirst();
    });
  }

  @override
  Future<void> deleteAllBookmark() async {
    await isar.writeTxn(() async {
      await isar.bookmarks.clear();
    });
  }

  @override
  Future<void> insertRiwayat(int suratId, int ayatId) async {
    await isar.writeTxn(() async {
      await isar.riwayats.put(Riwayat(suratId: suratId, ayatId: ayatId));
    });
  }

  @override
  Future<List<Riwayat>> getRiwayat() async {
    return await isar.riwayats.where().findAll();
  }

  @override
  Future<void> deleteRiwayat(int suratId, int ayatId) async {
    await isar.writeTxn(() async {
      await isar.riwayats.where().filter().suratIdEqualTo(suratId).and().ayatIdEqualTo(ayatId).deleteFirst();
    });
  }

  @override
  Future<void> deleteAllRiwayat() async {
    await isar.writeTxn(() async {
      await isar.riwayats.clear();
    });
  }
}
