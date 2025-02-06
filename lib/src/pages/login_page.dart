import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:laundry_app/src/pages/main_page.dart';

import '../base/base.dart';
import '../components/loading.dart';
import '../components/password_input.dart';
import '../components/text_field_input.dart';
import '../helpers/hex_color.dart';
import '../helpers/k_text.dart';
import '../helpers/route.dart';
import '../helpers/system_ui_overlay_style_helper.dart';
import '../services/validation_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with ValidationService {
  late TextEditingController userEmailController;
  final passwordController = TextEditingController();
  @override
  void initState() {
    userEmailController =
        TextEditingController(text: Base.authController.loginEmail.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: systemUiOverlayStyle(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   backgroundColor: hexToColor('0xFFE91E63'),
        //   automaticallyImplyLeading: false,
        //   title: Row(
        //     children: [
        //       Image.asset(
        //         'assets/images/touchLogo.png',
        //         height: 100,
        //         width: 120,
        //       ),
        //       Spacer(),
        //       CustomToggleButton(),
        //     ],
        //   ),
        // ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Obx(
              () => Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: Get.height,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Image.asset(
                      //   'assets/images/touchLogo.png',
                      //   // height: 100,
                      //   color: hexToColor("#E91E63"),
                      // ),
                      FlutterLogo(
                        size: 100,
                      ),
                      SizedBox(height: 80),
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Phone Number Input Field
                            // TextFormFieldWithCountryCode(
                            //   onChanged: (String value) {},
                            //   fillColor: hexToColor(
                            //     '#EFEFEF',
                            //   ),
                            //   cursorColor: hexToColor('#E0115F'),
                            // ),

                            TextFieldInput(
                              fillColor: hexToColor('#EFEFEF'),
                              cursorColor: hexToColor('#E0115F'),
                              hintText: 'Enter your email',
                              controller: userEmailController,
                              onChanged: (value) {
                                Base.authController.loginEmail.value =
                                    userEmailController.text.trim();
                              },
                              errorText: validateEmail(
                                  Base.authController.loginEmail.value),
                            ),

                            //User PasswordInput Field
                            SizedBox(height: 10),
                            // TextFormField(
                            //   obscureText: true,
                            //   cursorColor: hexToColor('#E0115F'),
                            //   decoration: InputDecoration(
                            //       hintText: 'Password',
                            //       hintStyle: TextStyle(color: hexToColor('#838383')),
                            //       filled: true,
                            //       fillColor: Colors.grey[200],
                            //       border: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(10),
                            //         borderSide: BorderSide.none,
                            //       )),
                            //   onChanged: (value) =>
                            //       controller.validatePassword(value),
                            //   validator: controller.validatePassword,
                            // ),
                            PasswordInput(
                              fillColor: hexToColor('#EFEFEF'),
                              cursorColor: hexToColor('#E0115F'),
                              onPressed: () =>
                                  Base.authController.changeNewObscure(),
                              onSubmitted: (value) {
                                if (Base.authController.isLoginButtonValid()) {
                                  push(MainPage());
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      backgroundColor: hexToColor('#E0115F'),
                                      content: KText(
                                        text:
                                            'Please fill out all required fields.',
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                }
                              },
                              controller: passwordController,
                              onChanged: (value) {
                                Base.authController.password.value =
                                    passwordController.text.trim();
                              },
                              errorText: validatePassword(
                                  Base.authController.password.value),
                              obscureText: Base.authController.isObscure.value,
                            ),

                            //User PasswordInput Field
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed: () {
                                  // push(ForgetPasswordPage());
                                },
                                child: KText(
                                  text: 'Forgot Password?',
                                  bold: true,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            // Sign-in button

                            // Sign in button
                            ElevatedButton(
                              onPressed: () {
                                if (Base.authController.isLoginButtonValid()) {
                                  push(MainPage());
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      backgroundColor: hexToColor('#E0115F'),
                                      content: KText(
                                        text:
                                            'Please fill out all required fields.',
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: hexToColor('#E0115F')
                                    .withValues(
                                        alpha: Base.authController
                                                .isLoginButtonValid()
                                            ? 1
                                            : .4),
                                minimumSize: Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Base.authController.isLoading.value
                                  ? Center(child: Loading(color: Colors.white))
                                  : KText(
                                      text: 'Sign in',
                                      fontSize: 18,
                                      color: Colors.grey[200],
                                    ),
                            ),
                            SizedBox(height: 50),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    KText(
                                      text: 'Don\'t have an account? ',
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // push(SignUpPage());
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 3,
                                        ),
                                        child: KText(
                                          text: 'Sign Up',
                                          fontSize: 16,
                                          bold: true,
                                          color: hexToColor('#8E9AEF'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25),
                                KText(
                                  text: 'Continue with',
                                  color: Colors.black,
                                  bold: true,
                                ),
                                SizedBox(height: 25),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Row(
                                    spacing: 20,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFDE5246),
                                            minimumSize:
                                                Size(double.infinity, 50),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                          ),
                                          child: KText(
                                            text: 'Google',
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                hexToColor('#4267B2'),
                                            minimumSize:
                                                Size(double.infinity, 50),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                          ),
                                          child: KText(
                                            text: 'Facebook',
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),

                            // OR text
                            // Align(
                            //   alignment: Alignment.center,
                            //   child: KText(
                            //     text: 'or',
                            //     fontSize: 16,
                            //   ),
                            // ),
                            // SizedBox(height: 10),

                            // Sign up button
                            // ElevatedButton(
                            //   onPressed: () {
                            //     kLog(Base.authController.loginEmail.value);
                            //   },
                            //   style: ElevatedButton.styleFrom(
                            //     backgroundColor: hexToColor('#E0115F'),
                            //     minimumSize: Size(double.infinity, 50),
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(25),
                            //     ),
                            //   ),
                            //   child: KText(
                            //     text: 'Sign Up',
                            //     fontSize: 18,
                            //     color: Colors.grey[200],
                            //   ),
                            // ),
                            // SizedBox(height: 10),

                            // // Sign up with Google button
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   style: ElevatedButton.styleFrom(
                            //     backgroundColor: Color(0xFFDE5246),
                            //     minimumSize: Size(double.infinity, 50),
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(25),
                            //     ),
                            //   ),
                            //   child: KText(
                            //     text: 'Sign up with Google',
                            //     fontSize: 18,
                            //     color: Colors.white,
                            //   ),
                            // ),
                            // SizedBox(height: 10),

                            // // Sign up with Facebook button
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   style: ElevatedButton.styleFrom(
                            //     backgroundColor: hexToColor('#4267B2'),
                            //     minimumSize: Size(double.infinity, 50),
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(25),
                            //     ),
                            //   ),
                            //   child: KText(
                            //     text: 'Sign up with Facebook',
                            //     fontSize: 18,
                            //     color: Colors.white,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
