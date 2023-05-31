import 'package:api_task2/routes/route.dart';
import 'package:api_task2/view/screen/Category/category_screen.dart';
import 'package:api_task2/view/screen/home/limit_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //
      initialRoute: Routes.limit_product,
      getPages: AppRoutes.routes,
 // home: LimitShowProduct(),

    );
  }
}
