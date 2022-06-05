import 'package:flutter/material.dart';
import 'package:rimo/modules/auth/business.dart';
import 'package:rimo/modules/home/home.dart';
import 'package:rimo/modules/auth/login.dart';
import 'package:rimo/modules/auth/personal.dart';
import 'package:rimo/modules/auth/signup.dart';
import 'package:rimo/modules/auth/splash.dart';
import 'package:rimo/modules/auth/recover.dart';
import 'package:rimo/modules/home/order.dart';

class RouteGenerator {
  static const splash = "/splash";
  static const login = "/login";
  static const signup = "/signup";
  static const recover = "/recover";
  static const personal = "/personal";
  static const business = "/business";
  static const home = "/home";
  static const order = "/order";

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      case login:
        return MaterialPageRoute(builder: (_) => const Login());
      case signup:
        return MaterialPageRoute(builder: (_) => const Signup());
      case recover:
        return MaterialPageRoute(builder: (_) => const Recover());
      case personal:
        return MaterialPageRoute(builder: (_) => const Personal());
      case business:
        return MaterialPageRoute(builder: (_) => const Business());
      case home:
        return MaterialPageRoute(builder: (_) => const Home());
      case order:
        return MaterialPageRoute(builder: (_) => const Orders());
    }
  }
}
