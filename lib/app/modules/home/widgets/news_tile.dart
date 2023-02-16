import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/string.dart';
import '../controllers/home_controller.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider(
          height: 10,
        );
      },
      itemCount: homeController.newsList.length,
      itemBuilder: ((context, index) {
        return Container(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                height: 85,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.bluegrey),
                child: const Center(
                  child: Text(
                    AppString.text,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      homeController.newsList[index]['title'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      homeController.newsList[index]['body'],
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
