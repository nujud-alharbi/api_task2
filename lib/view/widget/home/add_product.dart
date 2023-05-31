import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controller/product_controller.dart';
import '../../../model/product_model.dart';

class AddNewProduct extends StatelessWidget {
  AddNewProduct({Key? key}) : super(key: key);

  final controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return AlertDialog(
      title: Text(
        'Add item',
        style: theme.bodyMedium,
      ),
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            TextField(
              controller: controller.titleController,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: controller.descriptionController,
              decoration: const InputDecoration(hintText: 'Description'),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child:  Text(
            'Save',
            style: theme.headlineLarge,
          ),
          onPressed: () async {
            Get.back();
            //add func
            var data = Product(
                title: controller.titleController.text,
                description: controller.descriptionController.text,

            );

            await controller.postData(data);
            print(",,,,,,,,,,,,,,,");

            controller.refreshData();
            controller.clearController();
          },
        ),
      ],
    );
  }
}
