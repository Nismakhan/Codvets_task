import 'package:flutter/material.dart';
import 'package:ui/app/router.dart';

class SocailMedia extends StatelessWidget {
  const SocailMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        return AppRouter.onGenerateRoute(settings);
      },
    );
  }
}
