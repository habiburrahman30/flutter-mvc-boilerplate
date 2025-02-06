import 'package:get/get.dart';

import '../services/api_service.dart';

class AuthController extends GetxController with ApiService {
  final isLoading = RxBool(false);

  //**** For SignUp ****

  final fullName = RxString('');
  final email = RxString('');
  final mobileNumer = RxString('');
  final regPassword = RxString('');
  final regConfirmPassword = RxString('');

  final isObscure = RxBool(true);
  void changeNewObscure() => isObscure.toggle();
  final isConfirmObscure = RxBool(true);
  void changeConfirmObscure() => isConfirmObscure.toggle();

  //**** For login ****
  final loginEmail = RxString('demo@gmail.com');
  final password = RxString('');

  bool isSignupButtonValid() {
    if (fullName.value.isNotEmpty &&
        mobileNumer.value.isNotEmpty &&
        email.value.isNotEmpty &&
        regPassword.value.length > 6 &&
        regConfirmPassword.value == regPassword.value) {
      return true;
    } else {
      return false;
    }
  }

  bool isLoginButtonValid() {
    if (loginEmail.value.isNotEmpty &&
        password.value.isNotEmpty &&
        password.value.length >= 6) {
      return true;
    } else {
      return false;
    }
  }

  //******** Sign up ********/
}
