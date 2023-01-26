import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:ui/app/router.dart';
import 'package:ui/models/dummy.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future<void> loadData() async {
    final stringifiedData = await rootBundle.loadString("assets/data.json");
    final Map<String, dynamic> data =
        Map<String, dynamic>.from(jsonDecode(stringifiedData));
    final List<Dummy> dumy = (data["dummy"] as Map<String, dynamic>)
        .entries
        .map((e) => Dummy.fromJson(e.value))
        .toList();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(
        context,
        AppRouter.login,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
