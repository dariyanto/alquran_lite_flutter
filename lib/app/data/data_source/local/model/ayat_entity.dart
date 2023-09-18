import 'package:floor/floor.dart';

@entity
class Ayat {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int? suratId;
  final int? ayatId;
  final String? teksArab;
  final String? teksLatin;
  final String? teksIndonesia;
  final String? audio1;
  final String? audio2;
  final String? audio3;
  final String? audio4;
  final String? audio5;
  final DateTime timestamp;

  Ayat(
    this.id,
    this.suratId,
    this.ayatId,
    this.teksArab,
    this.teksLatin,
    this.teksIndonesia,
    this.audio1,
    this.audio2,
    this.audio3,
    this.audio4,
    this.audio5,
    this.timestamp,
  );

  factory Ayat.optional({
    int? id,
    int? suratId,
    int? ayatId,
    String? teksArab,
    String? teksLatin,
    String? teksIndonesia,
    String? audio1,
    String? audio2,
    String? audio3,
    String? audio4,
    String? audio5,
    DateTime? timestamp,
  }) {
    return Ayat(
      id,
      suratId,
      ayatId,
      teksArab,
      teksLatin,
      teksIndonesia,
      audio1,
      audio2,
      audio3,
      audio4,
      audio5,
      timestamp ?? DateTime.now(),
    );
  }
}