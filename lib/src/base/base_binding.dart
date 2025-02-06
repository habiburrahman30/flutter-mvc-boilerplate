import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import '../controllers/config_controller.dart';
import '../controllers/navigation_controller.dart';
import '../controllers/user_controller.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfigController());
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => UserController());

    //****** Services Area ******/
    // Get.lazyPut(() => IsarService());
    // Get.lazyPut(() => PermissionHandlerService());
    // Get.lazyPut(() => BackgroundService());
  }
}
