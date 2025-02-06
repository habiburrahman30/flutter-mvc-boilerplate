import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/home_page.dart';

class NavigationController extends GetxController {
  final globalKey = GlobalKey<ScaffoldState>();

  final currentIndex = RxInt(0);
  final isHomeActive = RxBool(true);

  // set setCurrentIndex(String item) => currentIndex.value = getMenuIndex(item);

  Widget getCurrentPage() {
    switch (currentIndex.value) {
      case 0:
        return HomePage();
      case 1:
        return Center(child: Text('page 1'));
      case 2:
        return Center(child: Text('page 2'));

      default:
        return Center(child: Text('page 3'));
    }
  }
  //  int getMenuIndex(String item) {
  //   return bottomMenus.indexOf(item);
  // }
}
