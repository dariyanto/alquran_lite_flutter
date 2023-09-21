import 'package:floor/floor.dart';

import '../model/statistik_entity.dart';

@dao
abstract class StatistikDao {
  @Query('SELECT * FROM Statistik')
  Future<List<Statistik>> findAllStatistik();

  @Query('SELECT * FROM Statistik WHERE id = :id')
  Future<Statistik?> findStatistikById(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<int> insertStatistik(Statistik ayat);

  @Query('DELETE FROM Statistik WHERE suratId = :suratId AND ayatId = :ayatId')
  Future<void> deleteStatistikBySuratIdAndAyatId(int suratId, int ayatId);

  @Query('DELETE FROM Statistik')
  Future<void> deleteAllStatistik();
}