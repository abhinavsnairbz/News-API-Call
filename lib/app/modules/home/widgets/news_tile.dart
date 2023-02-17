import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';
import '../../../constants/string.dart';
import '../controllers/home_controller.dart';

class NewsTile extends GetView<HomeController> {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            height: 10,
          );
        },
        itemCount: controller.newsList.length,
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
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.white,
                      ),
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
                        controller.newsList[index].title ?? 'NA',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        controller.newsList[index].body ?? 'NA',
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
      ),
    );
  }
}
