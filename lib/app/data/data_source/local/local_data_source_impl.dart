import 'package:isar/isar.dart';

import 'local_data_source.dart';
import 'model/ayat_entity.dart';
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
  Future<void> insertSurat(List<Surat> surat) async {
    await isar.writeTxn(() async {
      await isar.surats.clear();
      await isar.surats.putAll(surat);
    });
  }

  @override
  Future<List<Ayat>> getAyat() async {
    return await isar.ayats.where().findAll();
  }

  @override
  Future<void> insertAyat(List<Ayat> ayat) async {
    await isar.writeTxn(() async {
      await isar.ayats.clear();
      await isar.ayats.putAll(ayat);
    });
  }

  @override
  Future<List<Tafsir>> getTafsir() async {
    return await isar.tafsirs.where().findAll();
  }

  @override
  Future<void> insertTafsir(List<Tafsir> tafsir) async {
    await isar.writeTxn(() async {
      await isar.tafsirs.clear();
      await isar.tafsirs.putAll(tafsir);
    });
  }
}
