import 'package:api_task2/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controller/product_controller.dart';
import '../../widget/header_widget.dart';
import '../../widget/list_item.dart';

class LimitShowProduct extends StatelessWidget {
  const LimitShowProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {
                  Get.toNamed(Routes.show_all_product_screen);
                },
                child: const Text("See All Product",style: TextStyle(color: Colors.blueGrey),)),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: GetBuilder<ProductController>(builder: (controller) {
                return FutureBuilder(
                    future: controller.getLimitData(),
                    builder: (context, snapshot) {
                      print('snapshot.data?.length ${snapshot.data?.length}');
                      if (snapshot.hasData) {
                        if (snapshot.connectionState == ConnectionState.done &&
                            snapshot.data!.isNotEmpty) {
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: snapshot.data?.length,
                            itemBuilder: (context, index) {
                              var data = snapshot.data?[index];
                              return ListItem(
                                data: data,
                                controller: controller,
                                index: index,
                              );
                            },
                          );
                        } else {
                          return const Center(
                            child: Text("THERE IS NO ITEMS"),
                          );
                        }
                      } else {
                        return const Center(
                          child: Text("THERE IS NO ITEMS"),
                        );
                      }
                    });
              }),
            ),
          ),
        ],
        // )
      ),
    );
  }
}
