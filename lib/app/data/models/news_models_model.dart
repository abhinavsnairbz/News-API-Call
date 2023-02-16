class NewsModels {
  int? userId;
  int? id;
  String? title;
  String? body;

  NewsModels({this.userId, this.id, this.title, this.body});

  NewsModels.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
