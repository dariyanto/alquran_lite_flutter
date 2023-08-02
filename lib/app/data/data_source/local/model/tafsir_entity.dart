import 'package:isar/isar.dart';

part 'tafsir_entity.g.dart';

@collection
class Tafsir {
  Id id = Isar.autoIncrement;
  int? ayatId;
  String? teks;

  Tafsir({this.ayatId, this.teks});
}