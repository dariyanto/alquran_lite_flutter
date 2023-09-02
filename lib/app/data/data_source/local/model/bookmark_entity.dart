import 'package:isar/isar.dart';

part 'bookmark_entity.g.dart';

@collection
class Bookmark {
  Id id = Isar.autoIncrement;
  int? suratId;
  int? ayatId;

  Bookmark({this.suratId, this.ayatId});
}
