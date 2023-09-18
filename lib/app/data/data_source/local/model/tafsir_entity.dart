import 'package:floor/floor.dart';

@entity
class Tafsir {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int? suratId;
  final int? ayatId;
  final String? teks;
  final DateTime timestamp;

  Tafsir(this.id, this.suratId, this.ayatId, this.teks, this.timestamp);

  factory Tafsir.optional({
    int? id,
    int? suratId,
    int? ayatId,
    String? teks,
    DateTime? timestamp,
  }) {
    return Tafsir(id, suratId, ayatId, teks, timestamp ?? DateTime.now());
  }
}
