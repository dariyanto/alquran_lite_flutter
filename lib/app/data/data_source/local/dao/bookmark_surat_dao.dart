import 'package:floor/floor.dart';

import '../model/bookmark_surat_entity.dart';

@dao
abstract class BookmarkSuratDao {
  @Query('SELECT * FROM BookmarkSurat')
  Future<List<BookmarkSurat>> findAllBookmark();

  @Query('SELECT name FROM BookmarkSurat')
  Future<List<String>> findAllBookmarkName();

  @Query('SELECT * FROM BookmarkSurat WHERE id = :id')
  Future<BookmarkSurat?> findBookmarkById(int id);

  @Query('SELECT EXISTS(SELECT * FROM BookmarkSurat WHERE suratId = :suratId)')
  Future<bool> isBookmark(int suratId);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<int> insertBookmark(BookmarkSurat ayat);

  @Query('DELETE FROM BookmarkSurat WHERE suratId = :suratId')
  Future<void> deleteBookmarkBySuratIdAndAyatId(int suratId);

  @Query('DELETE FROM BookmarkSurat')
  Future<void> deleteAllBookmark();
}