import 'package:floor/floor.dart';

@entity
class BookmarkSurat {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int? suratId;
  final int? userId;
  final DateTime timestamp;

  BookmarkSurat(this.id, this.suratId, this.userId, this.timestamp);

  factory BookmarkSurat.optional({
    int? id,
    int? suratId,
    int? userId,
    DateTime? timestamp,
  }) {
    return BookmarkSurat(
      id,
      suratId,
      userId,
      timestamp ?? DateTime.now(),
    );
  }
}
