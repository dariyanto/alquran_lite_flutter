import 'package:floor/floor.dart';

import '../model/riwayat_entity.dart';

@dao
abstract class RiwayatDao {
  @Query('SELECT * FROM Riwayat')
  Future<List<Riwayat>> findAllRiwayat();

  @Query('SELECT name FROM Riwayat')
  Future<List<String>> findAllRiwayatName();

  @Query('SELECT * FROM Riwayat WHERE id = :id')
  Future<Riwayat?> findRiwayatById(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<int> insertRiwayat(Riwayat ayat);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<List<int>> insertRiwayats(List<Riwayat> ayats);

  @Query('DELETE FROM Riwayat WHERE suratId = :suratId AND ayatId = :ayatId')
  Future<void> deleteRiwayatBySuratIdAndAyatId(int suratId, int ayatId);

  @Query('DELETE FROM Riwayat')
  Future<void> deleteAllRiwayat();
}