class PostModel {
  int? id;
  int? userId;
  String? title;
  String? body;

  PostModel({this.id, this.userId, this.title, this.body});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json['id']?.toString() ?? '');
    userId = int.tryParse(json['userId']?.toString() ?? '');
    title = json['title']?.toString();
    body = json['body']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
