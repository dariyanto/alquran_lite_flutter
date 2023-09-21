import 'package:floor/floor.dart';

@Entity(primaryKeys: ['id'])
class Statistik {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int? suratId;
  final int? ayatId;
  final int? userId;
  final DateTime timestamp;

  Statistik(this.id, this.suratId, this.ayatId, this.userId, this.timestamp);

  factory Statistik.optional({
    int? id,
    int? suratId,
    int? ayatId,
    int? userId,
    DateTime? timestamp,
  }) {
    return Statistik(
      id,
      suratId,
      ayatId,
      userId,
      timestamp ?? DateTime.now(),
    );
  }
}
