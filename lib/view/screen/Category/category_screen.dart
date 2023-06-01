import 'package:flutter/material.dart';

import '../../widget/header_widget.dart';

import '../../widget/category/category_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List nameCategory = [
      "Jewelery",
      "Electronics",

    ];
    return Scaffold(
        body: Column(
      children: [

        Expanded(
          child: Container(
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: nameCategory.length,
                itemBuilder: (context, index) {
                  return ListItemCategory(
                    data: nameCategory[index],
                    index: index,
                  );
                },
              )),
        ),
      ],
      // )
    ));
  }
}
