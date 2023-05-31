
import 'package:api_task2/logic/controller/product_controller.dart';
import 'package:api_task2/view/screen/Category/category_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/app_image.dart';

class ListItemCategory extends StatelessWidget {
   ListItemCategory({
    super.key,
  required this.index
  });

  final controller = Get.put(ProductController());
final int index;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

      return Column(
        children: [
          InkWell(
            onTap: ()  {
              if(index == 0 ){
                controller.typeCategory = "jewelery";
            Get.to(SubCategory(func:controller.getLimitData()));


              }    else if(index == 1 ){

                controller.typeCategory = "electronics";
                Get.to(SubCategory(func:controller.getLimitData()));


              }  else if(index == 2 ){

                Get.to(SubCategory(func:controller.getAllData()));


              }  else if(index == 3 ){
                Get.to(SubCategory(func:controller.getAllData()));


              }
// Get.to(DetailsScreen(productModel: Product(title: data!.title)));
            },
            child: Card(
              margin: EdgeInsets.only(right: 8, left: 8, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 0,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,

                            image: DecorationImage(
                              image:
                              // data?.image == null
                              //     ?
                              AssetImage(AppImages.productImage)
                              as ImageProvider ,
                              //     : NetworkImage(
                              //   data!.image!,
                              // ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 4,
                              ),
                              // Text(
                              //   data?.title ?? "",
                              //     overflow: TextOverflow.ellipsis
                              // ),

                              const SizedBox(
                                height: 4,
                              ),
                              // Text(
                              // data!.price!.toString()
                              // ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),

                        // Column(
                        //   children: [
                        //     IconButton(
                        //       onPressed: () {
                        //         // Get.dialog(EditFormDialog(
                        //         //   toDoModel: data,
                        //         // ));
                        //       },
                        //       icon: const Icon(
                        //         Icons.edit,
                        //         color: Colors.black,
                        //       ),
                        //     ),
                        //     IconButton(
                        //       onPressed: () async {
                        //         await controller.deleteData('${data?.id}');
                        //         print(data?.id);
                        //
                        //         controller.refreshData();
                        //       },
                        //       icon: const Icon(
                        //         Icons.delete,
                        //         color: Colors.black,
                        //       ),
                        //     )
                        //   ],
                        // )

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  }
}
