import 'package:floor/floor.dart';

@entity
class Riwayat {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int? suratId;
  final int? ayatId;
  final int? userId;
  final DateTime timestamp;

  Riwayat(this.id, this.suratId, this.ayatId, this.userId, this.timestamp);

  factory Riwayat.optional({
    int? id,
    int? suratId,
    int? ayatId,
    int? userId,
    DateTime? timestamp,
  }) {
    return Riwayat(
      id,
      suratId,
      ayatId,
      userId,
      timestamp ?? DateTime.now(),
    );
  }
}
