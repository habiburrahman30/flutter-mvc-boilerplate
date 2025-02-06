import 'dart:io';
import 'dart:typed_data';

import 'package:get/get.dart';

class UserController extends GetxController {
  final isFirstTime = RxBool(false);

  //Gallery image
  // final ImagePicker imgpicker = ImagePicker();
  // final pickedImage = Rx<XFile?>(null);
  final fileImage = Rx<File?>(null);
  final pickedImageMemory = Rx<Uint8List?>(null);
  final userImage = Rx<Uint8List?>(null);

  //******  */
  // final currentUser = Rx<UserModel?>(null);
  // final currentSettings = Rx<SettingsModel?>(null);

//-------------------------------------------------------------
  // String? getToken() {
  //   return 'Bearer ${currentUser.value!.token}';
  // }

  // void selectAvatar() async {
  //   final image = await imgpicker.pickImage(source: ImageSource.camera);

  //   if (image != null && image.path.isNotEmpty) {
  //     // pickedImage.value = image;
  //     // pickedImageMemory.value = await image.readAsBytes();

  //     // File image
  //     fileImage.value = File(image.path);

  //     // Image compress function
  //     final img = await compressFile(
  //       file: fileImage.value,
  //     );

  //     // Load compress image
  //     fileImage.value = File(img!.path);

  //     pickedImage.value = XFile(img.path);
  //     pickedImageMemory.value = await img.readAsBytes();
  //   }
  // }
}
