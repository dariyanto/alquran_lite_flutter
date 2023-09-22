import 'package:floor/floor.dart';

import '../model/bookmark_ayat_entity.dart';

@dao
abstract class BookmarkAyatDao {
  @Query('SELECT * FROM BookmarkAyat')
  Future<List<BookmarkAyat>> findAllBookmark();

  @Query('SELECT * FROM BookmarkAyat WHERE id = :id')
  Future<BookmarkAyat?> findBookmarkById(int id);

  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<int> insertBookmark(BookmarkAyat ayat);

  @Query('DELETE FROM BookmarkAyat WHERE suratId = :suratId AND ayatId = :ayatId')
  Future<void> deleteBookmarkBySuratIdAndAyatId(int suratId, int ayatId);

  @Query('DELETE FROM BookmarkAyat')
  Future<void> deleteAllBookmark();
}