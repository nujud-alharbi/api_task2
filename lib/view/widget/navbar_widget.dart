
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controller/navbar_controller.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(
      builder: (controller) {
        return BottomNavigationBar(
          currentIndex: controller.currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [

            BottomNavigationBarItem(
                label: "Product",
                activeIcon: Icon(Icons.home),
                icon:Icon(Icons.home_outlined)),

            BottomNavigationBarItem(
              activeIcon: Icon(Icons.favorite),
              icon:Icon(Icons.category_rounded),
              label: 'Category',
            ),

          ],
          onTap: (index) {
            controller.updateIndex(index);
          },
        );
      },
    );
  }
}
