import 'package:floor/floor.dart';

@entity
class Bookmark {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int? suratId;
  final int? ayatId;
  final DateTime timestamp;

  Bookmark(this.id, this.suratId, this.ayatId,this.timestamp);

  factory Bookmark.optional({
    int? id,
    int? suratId,
    int? ayatId,
    DateTime? timestamp,
  }) {
    return Bookmark(
      id,
      suratId,
      ayatId,
      timestamp ?? DateTime.now(),
    );
  }
}
