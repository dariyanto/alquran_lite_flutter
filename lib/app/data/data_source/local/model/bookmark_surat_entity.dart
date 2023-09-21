import 'package:floor/floor.dart';

@entity
class BookmarkSurat {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int? suratId;
  final int? ayatId;
  final int? userId;
  final DateTime timestamp;

  BookmarkSurat(this.id, this.suratId, this.ayatId, this.userId, this.timestamp);

  factory BookmarkSurat.optional({
    int? id,
    int? suratId,
    int? ayatId,
    int? userId,
    DateTime? timestamp,
  }) {
    return BookmarkSurat(
      id,
      suratId,
      ayatId,
      userId,
      timestamp ?? DateTime.now(),
    );
  }
}
