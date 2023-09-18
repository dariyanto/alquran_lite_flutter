import 'package:floor/floor.dart';

import '../model/tafsir_entity.dart';

@dao
abstract class TafsirDao {
  @Query('SELECT * FROM Tafsir')
  Future<List<Tafsir>> findAllTafsir();

  @Query('SELECT name FROM Tafsir')
  Future<List<String>> findAllTafsirName();

  @Query('SELECT * FROM Tafsir WHERE id = :id')
  Future<Tafsir?> findTafsirById(int id);

  @Query('SELECT * FROM Tafsir WHERE suratId = :suratId')
  Future<List<Tafsir>> findAllTafsirBySuratId(int suratId);

  @Query('SELECT * FROM Tafsir WHERE suratId = :suratId AND ayatId = :ayatId')
  Future<Tafsir?> findTafsirBySuratIdAndAyatId(int suratId, int ayatId);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<int> insertTafsir(Tafsir ayat);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<List<int>> insertTafsirs(List<Tafsir> ayats);

}