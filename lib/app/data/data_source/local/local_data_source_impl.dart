import 'package:isar/isar.dart';

import 'local_data_source.dart';
import 'model/post_entity.dart';

class LocalDataSourceImpl extends LocalDataSource {
  final Isar isar;
  LocalDataSourceImpl({required this.isar});

  @override
  Future<List<Post>> getSurat() async {
    return await isar.posts.where().findAll();
  }

  @override
  Future<List<Post>> insertPosts(List<Post> posts) async {
    await isar.writeTxn(() async {
      await isar.posts.clear();
      await isar.posts.putAll(posts);
    });

    return getSurat();
  }
}
