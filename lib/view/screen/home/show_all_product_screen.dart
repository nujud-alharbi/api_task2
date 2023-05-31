
import 'package:api_task2/view/widget/home/add_product.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controller/product_controller.dart';
import '../../../routes/route.dart';
import '../../widget/header_widget.dart';
import '../../widget/list_item.dart';

class ShowAllProductScreen extends StatelessWidget {
  const ShowAllProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(title: "All Product", action: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: (){
                // Get.dialog(AddNewProduct());
              },icon: Icon(Icons.add),)
            )
          ]),
          Expanded(

            child: Container(
              padding:  EdgeInsets.all(8),
              child: GetBuilder<ProductController>(builder: (controller) {
                return FutureBuilder(
                    future: controller.getAllData(),
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

                              // var date =
                              // // DateTime.now();
                              // DateFormat('yyyy-MM-dd hh:mm:ss')
                              //     .parse(data!.date);
                              return ListItem(
                                data: data,
                                controller: controller,
                                index: index ,

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
