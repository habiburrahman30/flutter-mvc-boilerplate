import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base/base.dart';
import '../components/bottom_navigation_component.dart';
import '../components/app_bar_component.dart';
import '../components/drawer_component.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: Base.navigationController.globalKey,
      appBar: AppBarComponent(),
      drawer: DrawerComponent(),
      body: Obx(() => Base.navigationController.getCurrentPage()),
      bottomNavigationBar: BottomNavigationComponent(),
    );
  }
}
