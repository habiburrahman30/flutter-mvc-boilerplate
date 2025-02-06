import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:laundry_app/src/pages/login_page.dart';
import 'package:laundry_app/src/pages/main_page.dart';

import '../base/base.dart';
import '../components/loading.dart';
import '../components/password_input.dart';
import '../components/text_field_input.dart';
import '../controllers/text_form_field_with_country_code.dart';
import '../helpers/hex_color.dart';
import '../helpers/k_text.dart';
import '../helpers/route.dart';
import '../helpers/system_ui_overlay_style_helper.dart';
import '../services/validation_service.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with ValidationService {
  late TextEditingController userNameController;
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    userNameController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: systemUiOverlayStyle(),
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: hexToColor('#E0115F'),
        //   automaticallyImplyLeading: false,
        //   title: Row(
        //     children: [

        //       Image.asset(
        //         'assets/images/touchLogo.png',
        //         height: 100,
        //         width: 150,
        //       ),
        //       Spacer(),
        //       CustomToggleButton(),
        //     ],
        //   ),
        // ),
        body: SafeArea(
          child: Obx(
            () => SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: Get.height,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/touchLogo.png',
                        // height: 100,
                        color: hexToColor("#E91E63"),
                      ),
                      SizedBox(height: 80),

                      TextFieldInput(
                        fillColor: hexToColor('#EFEFEF'),
                        cursorColor: hexToColor('#E0115F'),
                        hintText: 'Full Name',
                        // controller: userEmailController,
                        controller: userNameController,
                        onChanged: (value) {
                          Base.authController.fullName.value =
                              userNameController.text.trim();
                        },
                        errorText: validateUsername(
                            Base.authController.fullName.value),
                      ),
                      SizedBox(height: 16),

                      // Phone Number field
                      TextFormFieldWithCountryCode(
                        onChanged: (String value) {
                          Base.authController.mobileNumer.value = value;
                        },
                        fillColor: hexToColor('#EFEFEF'),
                        cursorColor: hexToColor('#E0115F'),
                        countryCodeColor: hexToColor('#E0115F'),
                      ),

                      SizedBox(height: 16),

                      // Email field
                      TextFieldInput(
                        fillColor: hexToColor('#EFEFEF'),
                        cursorColor: hexToColor('#E0115F'),
                        hintText: 'Enter your email',
                        controller: emailController,
                        onChanged: (value) {
                          Base.authController.email.value =
                              emailController.text.trim();
                        },
                        errorText:
                            validateEmail(Base.authController.email.value),
                      ),
                      SizedBox(height: 16),

                      // Password field
                      PasswordInput(
                        fillColor: hexToColor('#EFEFEF'),
                        cursorColor: hexToColor('#E0115F'),
                        controller: passwordController,
                        onPressed: () => Base.authController.changeNewObscure(),
                        onSubmitted: (value) {},
                        onChanged: (value) {
                          Base.authController.regPassword.value =
                              passwordController.text.trim();
                        },
                        errorText: validatePassword(
                            Base.authController.regPassword.value),
                        obscureText: Base.authController.isObscure.value,
                      ),

                      SizedBox(height: 16),

                      // Confirm Password field
                      PasswordInput(
                        fillColor: hexToColor('#EFEFEF'),
                        cursorColor: hexToColor('#E0115F'),
                        controller: confirmPasswordController,
                        onPressed: () =>
                            Base.authController.changeConfirmObscure(),
                        onChanged: (value) {
                          Base.authController.regConfirmPassword.value =
                              confirmPasswordController.text.trim();
                        },
                        errorText: validateConfirmPassword(
                          Base.authController.regPassword.value,
                          Base.authController.regConfirmPassword.value,
                        ),
                        obscureText: Base.authController.isConfirmObscure.value,
                        onSubmitted: (value) {
                          if (Base.authController.isSignupButtonValid()) {
                            // Base.authController.signUp();
                            push(MainPage());
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: hexToColor('#E0115F'),
                                content: KText(
                                  text: 'Please fill out all required fields.',
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                      // SizedBox(height: 16),

                      // // Radio Buttons for Document Type
                      // Obx(() => Row(
                      //       children: [
                      //         Row(
                      //           children: [
                      //             SizedBox(
                      //               width: 30,
                      //               child: Radio<String>(
                      //                 value: 'NID',
                      //                 groupValue:
                      //                     signUpController.documentType.value,
                      //                 onChanged: (value) {
                      //                   signUpController.documentType.value =
                      //                       value!;
                      //                 },
                      //               ),
                      //             ),
                      //             Text(
                      //               'NID',
                      //               style: TextStyle(fontSize: 12),
                      //             ),
                      //           ],
                      //         ),
                      //         SizedBox(
                      //           width: 15,
                      //         ),
                      //         Row(
                      //           children: [
                      //             SizedBox(
                      //               width: 30,
                      //               child: Radio<String>(
                      //                 value: 'NID',
                      //                 groupValue:
                      //                     signUpController.documentType.value,
                      //                 onChanged: (value) {
                      //                   signUpController.documentType.value =
                      //                       value!;
                      //                 },
                      //               ),
                      //             ),
                      //             Text(
                      //               'Birth Certificate',
                      //               style: TextStyle(fontSize: 12),
                      //             ),
                      //           ],
                      //         ),

                      //         // Expanded(
                      //         //   flex: 2,
                      //         //   child: ListTile(
                      //         //     title: Text('NID',style: TextStyle(fontSize: 12),),
                      //         //     leading: Radio<String>(
                      //         //       value: 'NID',
                      //         //       groupValue: controller.documentType.value,
                      //         //       onChanged: (value) {
                      //         //         controller.documentType.value = value!;
                      //         //       },
                      //         //     ),
                      //         //   ),
                      //         // ),
                      //         // Expanded(
                      //         //  flex: 3,
                      //         //   child: ListTile(
                      //         //     title: Text('Birth Certificate',style: TextStyle(fontSize: 12)),
                      //         //     leading: Radio<String>(
                      //         //       value: 'Birth Certificate',
                      //         //       groupValue: controller.documentType.value,
                      //         //       onChanged: (value) {
                      //         //         controller.documentType.value = value!;
                      //         //       },
                      //         //     ),
                      //         //   ),
                      //         // ),
                      //       ],
                      //     )),
                      // SizedBox(height: 20),
                      // TextFormField(
                      //   cursorColor: hexToColor('#E0115F'),
                      //   decoration: InputDecoration(
                      //     // contentPadding: EdgeInsets.symmetric(vertical: 20),
                      //     hintText: 'Attach NID Font',
                      //     hintStyle: TextStyle(color: hexToColor('#E0115F')),
                      //     filled: true,
                      //     fillColor: Colors.grey[200],
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(12),
                      //       borderSide: BorderSide.none,
                      //     ),
                      //     suffixIcon: Icon(Icons.check),
                      //     suffixIconColor: hexToColor('#E0115F'),
                      //     prefixIcon: Transform.rotate(
                      //         angle: 50 * pi / 220,
                      //         child: Icon(Icons.attach_file)),
                      //     prefixIconColor: hexToColor('#E0115F'),
                      //   ),
                      // ),

                      // SizedBox(height: 20),
                      // TextFormField(
                      //   cursorColor: hexToColor('#E0115F'),
                      //   decoration: InputDecoration(
                      //     hintText: 'Attach NID Back',
                      //     // hintStyle: TextStyle( color: hexToColor('#E0115F')),
                      //     filled: true,
                      //     fillColor: Colors.grey[200],
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(12),
                      //       borderSide: BorderSide.none,
                      //     ),
                      //     // suffixIcon: Icon(Icons.check),
                      //     // suffixIconColor: hexToColor('#E0115F'),
                      //     prefixIcon: Transform.rotate(
                      //         angle: 50 * pi / 220,
                      //         child: Icon(Icons.attach_file)),
                      //     // prefixIconColor: hexToColor('#E0115F'),
                      //   ),
                      // ),

                      SizedBox(height: 50),

                      // Submit button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          backgroundColor: hexToColor('#E0115F').withValues(
                              alpha: Base.authController.isSignupButtonValid()
                                  ? 1
                                  : .4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Base.authController.isLoading.value
                            ? Center(child: Loading(color: Colors.white))
                            : KText(
                                text: 'Sign Up',
                                color: Colors.white,
                                bold: true,
                              ),
                        onPressed: () {
                          if (Base.authController.isSignupButtonValid()) {
                            push(MainPage());
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: hexToColor('#E0115F'),
                                content: KText(
                                  text: 'Please fill out all required fields.',
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          KText(
                            text: 'Already have an account? ',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          SizedBox(width: 4),
                          InkWell(
                            onTap: () => push(LoginPage()),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 3,
                              ),
                              child: KText(
                                text: 'Login',
                                fontSize: 16,
                                bold: true,
                                color: hexToColor('#8E9AEF'),
                              ),
                            ),
                          ),
                        ],
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
