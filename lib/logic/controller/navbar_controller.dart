
import 'package:api_task2/view/screen/Category/category_screen.dart';
import 'package:api_task2/view/screen/home/limit_product.dart';
import 'package:get/get.dart';

class NavBarController extends GetxController {
  var currentIndex = 0;

  final title = [
    "Shop".tr,
    "Category".tr,
  ];

  final tabs = [
    LimitShowProduct(),
    CategoryScreen()
  ];

  updateIndex(int index) {
    currentIndex = index;
    update();
  }
}
