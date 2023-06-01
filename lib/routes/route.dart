import 'package:api_task2/view/screen/home/limit_product.dart';
import 'package:api_task2/view/screen/nav_screen.dart';

import 'package:api_task2/view/screen/home/show_all_product_screen.dart';

import 'package:get/get.dart';


import '../binding/binding.dart';
import '../view/screen/home/details_screen.dart';

class AppRoutes {
  static final routes = [
    // GetPage(
    //     name: Routes.details_screen,
    //     page: () => DetailsScreen(),
    //     binding: Binding()),
    GetPage(
        name: Routes.show_all_product_screen,
        page: () => ShowAllProductScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.limit_product,
        page: () => LimitShowProduct(),
        binding: Binding()),
    GetPage(
        name: Routes.home_screen,
        page: () => NavScreen(),
     binding: Binding()
    ),

  ];
}

class Routes {
  static const details_screen = '/details_screen';
  static const show_all_product_screen = '/show_all_product_screen';
  static const limit_product = '/limit_product';
  static const home_screen = '/home_screen';
}
