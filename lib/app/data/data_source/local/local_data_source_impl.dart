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
}
