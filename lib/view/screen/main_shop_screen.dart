
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../logic/controller/navbar_controller.dart';
import '../widget/navbar_widget.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final getStorage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions:const [

          ],
          title: Text(
            controller.title[controller.currentIndex],
            style: TextStyle(color: Colors.blueGrey,
            fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBar: const NavBarWidget(),
        body: IndexedStack(
          index: controller.currentIndex,
          children: controller.tabs,
        ),
      );
    });
  }
}
