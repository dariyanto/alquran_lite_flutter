import 'package:floor/floor.dart';

import '../model/bookmark_entity.dart';

@dao
abstract class BookmarkDao {
  @Query('SELECT * FROM Bookmark')
  Future<List<Bookmark>> findAllBookmark();

  @Query('SELECT name FROM Bookmark')
  Future<List<String>> findAllBookmarkName();

  @Query('SELECT * FROM Bookmark WHERE id = :id')
  Future<Bookmark?> findBookmarkById(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<int> insertBookmark(Bookmark ayat);


  @Query('DELETE FROM Bookmark WHERE suratId = :suratId AND ayatId = :ayatId')
  Future<void> deleteBookmarkBySuratIdAndAyatId(int suratId, int ayatId);

  @Query('DELETE FROM Bookmark')
  Future<void> deleteAllBookmark();
}