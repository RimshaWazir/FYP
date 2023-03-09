import 'package:flutter/material.dart';
import '../auth/screen/sign_in.dart';
import '../auth/screen/sign_up.dart';
import '../screens/home_page.dart';

class AppRouter {
  static const String signIn = "/sign_in";
  static const String signUp = "/sign_up";
  static const String homePage = "/home_page";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signIn:
        return MaterialPageRoute(
          builder: ((context) => const SignIn()),
          settings: settings,
        );
      case signUp:
        return MaterialPageRoute(
          builder: ((context) => const Signup()),
          settings: settings,
        );
      case homePage:
        return MaterialPageRoute(
          builder: ((context) => HomePage()),
          settings: settings,
        );
    }
    return null;
  }
}
