import 'package:floor/floor.dart';

@entity
class Riwayat {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int? suratId;
  final int? ayatId;
  final DateTime timestamp;

  Riwayat(this.id, this.suratId, this.ayatId, this.timestamp);

  factory Riwayat.optional({
    int? id,
    int? suratId,
    int? ayatId,
    DateTime? timestamp,
  }) {
    return Riwayat(
      id,
      suratId,
      ayatId,
      timestamp ?? DateTime.now(),
    );
  }
}
