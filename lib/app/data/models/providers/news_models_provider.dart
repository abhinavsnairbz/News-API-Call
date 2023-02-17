import 'dart:convert';

import 'package:get/get.dart';

import '../news_models_model.dart';

class NewsModelsProvider extends GetConnect {
  @override
  void onInit() {}
  Future<List<NewsModels>?> fetchNews() async {
    var response = await get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == 200) {
      final newsResponse =
          NewsModelResponse.fromJson(response.body);
      return newsResponse.news;
    } else {
      return null;
    }
  }
}
