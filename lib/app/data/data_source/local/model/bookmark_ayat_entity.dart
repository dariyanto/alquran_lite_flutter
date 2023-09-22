import 'package:floor/floor.dart';

@Entity(primaryKeys: ['suratId', 'ayatId', 'userId'])
class BookmarkAyat {
  final int? suratId;
  final int? ayatId;
  final int? userId;

  BookmarkAyat(this.suratId, this.ayatId, this.userId);

  factory BookmarkAyat.optional({
    int? suratId,
    int? ayatId,
    int? userId,
  }) {
    return BookmarkAyat(
      suratId,
      ayatId,
      userId,
    );
  }
}
