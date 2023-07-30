
import 'model/post_entity.dart';

abstract class LocalDataSource {
  Future<List<Post>> getSurat();
  Future<List<Post>> insertPosts(List<Post> posts);
}