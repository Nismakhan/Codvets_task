import 'package:flutter/material.dart';
import 'package:ui/utils/mediaquery.dart';

import '../app/router.dart';

class BottemNavigationBar extends StatelessWidget {
  const BottemNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      height: screenHeight(context) * 0.1,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 35,
          ),
          GestureDetector(
            child: const Icon(
              Icons.home,
              size: 50,
            ),
            onTap: () => Navigator.of(context).pushNamed(AppRouter.dashboard),
          ),
          const SizedBox(
            width: 35,
          ),
          GestureDetector(
            child: const Icon(
              Icons.person,
              size: 50,
            ),
            onTap: () {
              Navigator.of(context).pushNamed(
                AppRouter.user,
                // arguments: Dummy.fromJson(dumy));
              );
            },
          ),
          const SizedBox(
            width: 35,
          ),
          GestureDetector(
            child: const Icon(
              Icons.explore,
              size: 50,
            ),
            onTap: () => Navigator.of(context).pushNamed(AppRouter.chat),
          ),
          const SizedBox(
            width: 35,
          ),
          GestureDetector(
            child: const Icon(
              Icons.chat,
              size: 50,
            ),
            onTap: () =>
                Navigator.of(context).pushNamed(AppRouter.messagesScreen),
          ),
        ],
      ),
    );
  }
}
