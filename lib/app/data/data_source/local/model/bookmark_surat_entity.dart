import 'package:floor/floor.dart';

@Entity(primaryKeys: ['suratId', 'userId'])
class BookmarkSurat {
  final int? suratId;
  final int? userId;

  BookmarkSurat(this.suratId, this.userId);

  factory BookmarkSurat.optional({
    int? suratId,
    int? userId,
  }) {
    return BookmarkSurat(
      suratId,
      userId,
    );
  }
}
