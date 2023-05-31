import 'package:api_task2/logic/controller/product_controller.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_image.dart';
import '../../model/product_model.dart';



class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.data,
    required this.controller,
    required this.index

  });

  final Product? data;
final int index;
  final ProductController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GetBuilder<ProductController>(builder: (controller) {
      return Column(
        children: [
          InkWell(
            // onTap: (){
//               if(index == 0 ){
//                 Get.toNamed(Routes.home_screen);
//
//
//             }else {
//                 controller.idUser = data!.id!;
//                 print(",msmm");
//                 print(controller.idUser);
//                 Get.to(DetailsScreen());
//               }
// Get.to(DetailsScreen(productModel: Product(title: data!.title))
// );
//             },
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
                              image: data?.image == null
                                  ? AssetImage(AppImages.productImage)
                              as ImageProvider
                                  : NetworkImage(
                                data!.image!,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              SizedBox(
                                height: 4,

                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  data!.title ?? "",
                                    overflow: TextOverflow.ellipsis
                                ),
                              ),

                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                              data!.price!.toString() +" SR"
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                  data!.rating!.rate.toString()
                              ),
                            ],
                          ),
                        ),

                        Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      // Get.dialog(EditFormDialog(
                                      //   toDoModel: data,
                                      // ));
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      await controller.deleteData('${data?.id}');
                                      print(data?.id);

                                      controller.refreshData();
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              )

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
