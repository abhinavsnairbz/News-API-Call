import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../widgets/news_tile.dart';

class HomeView extends GetView<HomeController> {
  HomeController homeController = HomeController();

  HomeView({Key? key}) : super(key: key);
  // final homecontroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: NewsTile(),
        ),
      ),
    );
  }
}
