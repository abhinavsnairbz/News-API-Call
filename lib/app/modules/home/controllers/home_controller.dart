import 'package:get/get.dart';
import 'package:newsapi/app/data/models/news_models_model.dart';
import 'package:newsapi/app/data/models/providers/news_models_provider.dart';

class HomeController extends GetxController {
  var newsList = <NewsModels>[].obs;
  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  void fetchNews() async {
    NewsModelsProvider().fetchNews().then((value) {
      if (value != null) {
        newsList.value = value;
      }
    }, onError: (error) {
      print(error);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
