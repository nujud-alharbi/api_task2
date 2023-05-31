import 'package:flutter/material.dart';

import '../../../model/product_model.dart';

import '../../widget/home/info_clothes.dart';

class DetailsScreen extends StatelessWidget {

  // final Product productModel;
  const DetailsScreen({Key? key,
    // required this.productModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: context.theme.backgroundColor,

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ImageSliders(imageUrl: productModel.image,),


              Text(""),







              // ClothesInfo(
              //   title: productModel.title!,
              //   productId: productModel.id!,
              // rate: productModel.rating!.rate,
              //   description: productModel.description!
              //   )
              // ,
              // const SizeList(),
              // AddCart(price: productModel.price!,
              //   productModel: productModel,),

            ],
          ),
        ) ,
      ),
    );
  }
}