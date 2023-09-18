import 'package:floor/floor.dart';

@entity
class Surat {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int? suratId;
  final String? nama;
  final String? namaLatin;
  final String? jumlahAyat;
  final String? tempatTurun;
  final String? arti;
  final String? deskripsi;
  final String? audio1;
  final String? audio2;
  final String? audio3;
  final String? audio4;
  final String? audio5;
  final DateTime timestamp;

  Surat(
    this.id,
    this.suratId,
    this.nama,
    this.namaLatin,
    this.jumlahAyat,
    this.tempatTurun,
    this.arti,
    this.deskripsi,
    this.audio1,
    this.audio2,
    this.audio3,
    this.audio4,
    this.audio5,
    this.timestamp,
  );

  factory Surat.optional({
    int? id,
    int? suratId,
    String? nama,
    String? namaLatin,
    String? jumlahAyat,
    String? tempatTurun,
    String? arti,
    String? deskripsi,
    String? audio1,
    String? audio2,
    String? audio3,
    String? audio4,
    String? audio5,
    DateTime? timestamp,
  }) {
    return Surat(
      id,
      suratId,
      nama,
      namaLatin,
      jumlahAyat,
      tempatTurun,
      arti,
      deskripsi,
      audio1,
      audio2,
      audio3,
      audio4,
      audio5,
      timestamp ?? DateTime.now(),
    );
  }
}
