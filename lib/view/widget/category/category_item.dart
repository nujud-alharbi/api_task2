import 'package:api_task2/logic/controller/product_controller.dart';
import 'package:api_task2/view/screen/Category/specifice_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ListItemCategory extends StatelessWidget {
  ListItemCategory({super.key, required this.index, this.data});

  final controller = Get.put(ProductController());
  final int index;
  final data;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Column(
      children: [
        InkWell(
          onTap: () {
            if (index == 0) {
              controller.typeCategory = "jewelery";
              Get.to(
                  SpecificCategory(func: controller.getAllDataTypeCategory()));
            } else if (index == 1) {
              controller.typeCategory = "electronics";
              Get.to(
                  SpecificCategory(func: controller.getAllDataTypeCategory()));
            } else if (index == 2) {
              Get.to(SpecificCategory(func: controller.getAllData()));
            } else if (index == 3) {
              Get.to(SpecificCategory(func: controller.getAllData()));
            }
// Get.to(DetailsScreen(productModel: Product(title: data!.title)));
          },
          child: SizedBox(
            width: 400,
            height: 150,
            child: Card(
              color: Colors.blueGrey.shade300,
              margin: EdgeInsets.only(right: 0, left: 0, bottom: 66),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    data ?? "",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
