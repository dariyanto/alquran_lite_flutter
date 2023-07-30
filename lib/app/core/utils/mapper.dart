// mapper to postresponse from post
import '../../data/data_source/local/model/post_entity.dart';
import '../../data/data_source/remote/model/post_response.dart';
import '../../domain/model/post_model.dart';

// mapper from post_response to post_entity

extension PostResponseMapper on PostResponse {
  Post toEntity() {
    return Post(
      title: title,
      body: body,
      userId: userId,
    );
  }
}

// mapper from post_entity to post_model
extension PostEntityMapper on Post {
  PostModel toModel() {
    return PostModel(
      title: title,
      body: body,
      userId: userId,
    );
  }
}

// mapper from post_model to post_entity
extension PostModelMapper on PostModel {
  Post toEntity() {
    return Post(
      title: title,
      body: body,
      userId: userId,
    );
  }
}

