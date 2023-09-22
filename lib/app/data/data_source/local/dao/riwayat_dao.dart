import 'package:floor/floor.dart';

import '../model/riwayat_entity.dart';

@dao
abstract class RiwayatDao {
  @Query('SELECT * FROM Riwayat')
  Future<List<Riwayat>> findAllRiwayat();

  @Query('SELECT * FROM Riwayat WHERE id = :id')
  Future<Riwayat?> findRiwayatById(int id);

  @insert
  Future<int> insertRiwayat(Riwayat ayat);

  @insert
  Future<List<int>> insertRiwayats(List<Riwayat> ayats);

  @Query('DELETE FROM Riwayat WHERE suratId = :suratId AND ayatId = :ayatId')
  Future<void> deleteRiwayatBySuratIdAndAyatId(int suratId, int ayatId);

  @Query('DELETE FROM Riwayat')
  Future<void> deleteAllRiwayat();
}