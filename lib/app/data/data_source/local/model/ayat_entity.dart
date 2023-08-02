import 'package:isar/isar.dart';

part 'ayat_entity.g.dart';

@collection
class Ayat {
  Id id = Isar.autoIncrement;
  String? teksArab;
  String? teksLatin;
  String? teksIndonesia;
  String? audio1;
  String? audio2;
  String? audio3;
  String? audio4;
  String? audio5;

  Ayat({
    this.teksArab,
    this.teksLatin,
    this.teksIndonesia,
    this.audio1,
    this.audio2,
    this.audio3,
    this.audio4,
    this.audio5,
  });
}