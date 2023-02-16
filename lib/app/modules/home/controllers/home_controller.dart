import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class HomeController extends GetxController {
  var newsList = <dynamic>[].obs;
  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  void fetchNews() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      newsList.assignAll(json.decode(response.body));
    }
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
