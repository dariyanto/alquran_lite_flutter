import 'package:isar/isar.dart';

part 'tafsir_entity.g.dart';

@collection
class Tafsir {
  Id id = Isar.autoIncrement;
  int? suratId;
  int? ayatId;
  String? teks;

  Tafsir({this.suratId, this.ayatId, this.teks});
}
