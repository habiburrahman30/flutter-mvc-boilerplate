import 'package:get/get.dart';
import 'package:laundry_app/src/pages/splash_page.dart';

class Routes {
  static const String splash = "/splash_page";
  static const String onboarding = "/onboarding";
  static const String main = "/";
  static const String login = "/login";
  static const String registeration = "/registeration";
  static const String notification = "/notification";
  static const String products = "/products";
  static const String allPproducts = "/all_products";
}

class GetxRouteGenerator {
  static appRoutes() => [ 
        GetPage(
          name: Routes.splash,
          page: () => SplashPage(),
          // middlewares: [RouteGuard()],
          // transitionDuration: Duration(milliseconds: 250),
          // transition: Transition.leftToRightWithFade,
        ),
        // GetPage(
        //   name: Routes.login,
        //   page: () => LoginPage(),
        //   // transitionDuration: Duration(milliseconds: 250),
        //   // transition: Transition.leftToRightWithFade,
        // ),
        // GetPage(
        //   name: Routes.registeration,
        //   page: () => SignUpPage(),
        //   // transitionDuration: Duration(milliseconds: 250),
        //   // transition: Transition.leftToRightWithFade,
        // ),
        // GetPage(
        //   name: Routes.notification,
        //   page: () => NotificationPage(),
        //   // transitionDuration: Duration(milliseconds: 250),
        //   // transition: Transition.leftToRightWithFade,
        // ),
        // GetPage(
        //   name: Routes.settings,
        //   page: () => SettingsPage(),
        //   transitionDuration: Duration(milliseconds: 250),
        //   transition: Transition.leftToRightWithFade,
        // ),
        // GetPage(
        //   name: Routes.products,
        //   page: () => ProductDetailsPage(
        //     id: int.parse(Get.parameters['id']!),
        //   ),
        //   transitionDuration: Duration(milliseconds: 250),
        //   transition: Transition.leftToRightWithFade,
        // ),
        // GetPage(
        //   name: Routes.allPproducts,
        //   page: () => AllProductsPage(),
        //   transitionDuration: Duration(milliseconds: 250),
        //   transition: Transition.leftToRightWithFade,
        // ),
        // GetPage(
        //   name: Routes.notification,
        //   page: () => NotificationPage(),
        //   transitionDuration: Duration(milliseconds: 250),
        //   transition: Transition.leftToRightWithFade,
        // ),
      ];
}

/// User cannot go to the dashboard screen if he doesn’t have a login token.
class RouteGuard extends GetMiddleware {
  // @override
  // RouteSettings redirect(String route) {
  //   return userToken == null ? const RouteSettings(name: Routes.login) : null;
  // }
}
