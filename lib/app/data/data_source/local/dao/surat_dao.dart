import 'package:floor/floor.dart';

import '../model/surat_entity.dart';

@dao
abstract class SuratDao {
  @Query('SELECT * FROM Surat')
  Future<List<Surat>> findAllSurat();

  @Query('SELECT * FROM Surat WHERE id = :id')
  Future<Surat?> findSuratById(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<int> insertSurat(Surat ayat);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<List<int>> insertSurats(List<Surat> ayats);
}