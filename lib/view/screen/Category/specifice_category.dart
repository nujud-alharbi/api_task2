import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controller/product_controller.dart';
import '../../widget/header_widget.dart';
import '../../widget/list_item.dart';

class SpecificCategory extends StatelessWidget {
  SpecificCategory({Key? key, required this.func}) : super(key: key);
  Future<dynamic> func;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderWidget(title: "Home", ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: GetBuilder<ProductController>(builder: (controller) {
                return FutureBuilder(
                    future: func,
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
