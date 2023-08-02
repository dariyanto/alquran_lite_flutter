import 'package:isar/isar.dart';

part 'surat_entity.g.dart';

@collection
class Surat {
  Id id = Isar.autoIncrement;
  String? nama;
  String? namaLatin;
  String? jumlahAyat;
  String? tempatTurun;
  String? arti;
  String? deskripsi;
  String? audio1;
  String? audio2;
  String? audio3;
  String? audio4;
  String? audio5;

  Surat({
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
  });
}
