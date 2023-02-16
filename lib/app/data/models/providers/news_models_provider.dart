// import 'package:get/get.dart';

// import '../news_models_model.dart';

// class NewsModelsProvider extends GetConnect {
//   @override
//   void onInit() {
//     httpClient.defaultDecoder = (map) {
//       if (map is Map<String, dynamic>) return NewsModels.fromJson(map);
//       if (map is List) {
//         return map.map((item) => NewsModels.fromJson(item)).toList();
//       }
//     };
//     httpClient.baseUrl = 'https://jsonplaceholder.typicode.com/posts';
    
//   }

//   Future<NewsModels?> getNewsModels(int id) async {
//     final response = await get('newsmodels/$id');
//     return response.body;
//   }

//   Future<Response<NewsModels>> postNewsModels(NewsModels newsmodels) async =>
//       await post('newsmodels', newsmodels);
//   Future<Response> deleteNewsModels(int id) async =>
//       await delete('newsmodels/$id');


// }
