import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controller/product_controller.dart';
import '../../widget/header_widget.dart';
import '../../widget/list_item.dart';
import '../../widget/category/list_item_category.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(title: "Category", action: [
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
              child:

                // return
                //   FutureBuilder(
                //     future: controller.getAllDataCat(),



 ListView.builder(
    padding: EdgeInsets.zero,
    itemCount: 4,
    itemBuilder: (context, index) {


    // var date =
    // // DateTime.now();
    // DateFormat('yyyy-MM-dd hh:mm:ss')
    //     .parse(data!.date);
    return ListItemCategory(
    // data: data,
    // controller: controller,
    index: index,
    );
    },
    )

            ),
          ),
        ],
        // )
      ));
  }
}
