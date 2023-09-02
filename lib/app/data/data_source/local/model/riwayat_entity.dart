import 'package:isar/isar.dart';

part 'riwayat_entity.g.dart';

@collection
class Riwayat {
  Id id = Isar.autoIncrement;
  int? suratId;
  int? ayatId;

  Riwayat({this.suratId, this.ayatId});
}
