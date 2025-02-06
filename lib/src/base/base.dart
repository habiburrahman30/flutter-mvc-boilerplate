import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import '../controllers/config_controller.dart';
import '../controllers/navigation_controller.dart';
import '../controllers/user_controller.dart';

class Base {
  static final configController = Get.find<ConfigController>();
  static final navigationController = Get.find<NavigationController>();
  static final authController = Get.find<AuthController>();
  static final userController = Get.find<UserController>();

  // ****** Services Area ******/
  // static final isarService = Get.find<IsarService>();
  // static final permissionHandlerService = Get.find<PermissionHandlerService>();
  // static final backgroundService = Get.find<BackgroundService>();
}
