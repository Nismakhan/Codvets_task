import 'package:flutter/material.dart';
import 'package:ui/app/splash.dart';
import 'package:ui/screens/chat.dart';
import 'package:ui/screens/dashboard.dart';
import 'package:ui/screens/login.dart';
import 'package:ui/screens/messages_screen.dart';
import 'package:ui/screens/sign_up.dart';
import 'package:ui/screens/user.dart';

class AppRouter {
  static const String splash = "/";
  static const String login = "/login";
  static const String signUp = "/signUp";
  static const String dashboard = "/dashboard";
  static const String chat = "/chat";
  static const String user = "/user";
  static const String messagesScreen = "/messages_screen";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: ((context) => const Splash()),
        );
      case login:
        return MaterialPageRoute(
          builder: ((context) => const Login()),
        );
      case signUp:
        return MaterialPageRoute(
          builder: ((context) => const SignUp()),
        );
      case dashboard:
        // final args = settings.arguments as UserStories;
        return MaterialPageRoute(
          builder: ((context) => Dashboard(
              // args: args,
              )),
        );
      case chat:
        return MaterialPageRoute(
          builder: ((context) => Chat()),
        );
      case messagesScreen:
        return MaterialPageRoute(
          builder: ((context) => MessagesScreen()),
        );
      case user:
        // final ar = settings.arguments as Dummy2;
        return MaterialPageRoute(
          builder: ((context) => User(
              // args: ar,
              )),
        );

      // case chat:
      //   final args = settings.arguments as ChatData;
      //   return MaterialPageRoute(
      //     builder: ((context) => Chat(
      //           args: args,
      //         )),
      //   );
    }
    return null;
  }
}
