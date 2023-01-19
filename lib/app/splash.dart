// import 'dart:convert';

// import 'package:flutter/material.dart';

// import 'package:ui/app/router.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:ui/models/messages.dart';
// import 'package:ui/screens/chat.dart';

// class Splash extends StatefulWidget {
//   const Splash({super.key});

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     loadData();
//     super.initState();
//   }

//   Future<void> loadData() async {
//     final stringifiedData = await rootBundle.loadString("assets/data.json");
//     final Map<String, dynamic> data =
//         Map<String, dynamic>.from(jsonDecode(stringifiedData));
//     final List<Messages> messages = (data["messages"] as Map<String, dynamic>)
//         .entries
//         .map((e) => Messages.fromJson(e.value))
//         .toList();

//     Future.delayed(
//       const Duration(seconds: 3),
//       () {
//         Navigator.of(context).pushNamed(AppRouter.chat,
//             arguments: ChatData(msgz: messages, isSentByMe: false));
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:ui/app/router.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppRouter.login);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
