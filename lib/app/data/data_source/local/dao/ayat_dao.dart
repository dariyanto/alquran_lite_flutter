import 'package:floor/floor.dart';

import '../model/ayat_entity.dart';

@dao
abstract class AyatDao {
  @Query('SELECT * FROM Ayat')
  Future<List<Ayat>> findAllAyat();

  @Query('SELECT * FROM Ayat WHERE id = :id')
  Future<Ayat?> findAyatById(int id);

  @Query('SELECT * FROM Ayat WHERE suratId = :suratId')
  Future<List<Ayat>> findAllAyatBySuratId(int suratId);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<int> insertAyat(Ayat ayat);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<List<int>> insertAyats(List<Ayat> ayats);
}