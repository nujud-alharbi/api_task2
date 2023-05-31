
import 'package:api_task2/view/screen/home/limit_product.dart';
import 'package:get/get.dart';

import '../logic/controller/product_controller.dart';

class Binding implements Bindings {
  @override
  void dependencies() {

    Get.put(ProductController());
    Get.put(LimitShowProduct());
  }
}
