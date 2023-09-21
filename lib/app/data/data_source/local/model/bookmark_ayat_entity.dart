import 'package:floor/floor.dart';

@entity
class BookmarkAyat {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int? suratId;
  final int? ayatId;
  final int? userId;
  final DateTime timestamp;

  BookmarkAyat(this.id, this.suratId, this.ayatId, this.userId, this.timestamp);

  factory BookmarkAyat.optional({
    int? id,
    int? suratId,
    int? ayatId,
    int? userId,
    DateTime? timestamp,
  }) {
    return BookmarkAyat(
      id,
      suratId,
      ayatId,
      userId,
      timestamp ?? DateTime.now(),
    );
  }
}
