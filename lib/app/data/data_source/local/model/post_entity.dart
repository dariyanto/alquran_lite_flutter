import 'package:isar/isar.dart';

part 'post_entity.g.dart';

@collection
class Post {
  Id id = Isar.autoIncrement;
  int? userId;
  String? title;
  String? body;

  Post({this.userId, this.title, this.body});
}