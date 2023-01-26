import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:ui/utils/mediaquery.dart';
import 'package:ui/widgets/bottem_navigaton_bar.dart';
import 'package:ui/widgets/widgets.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen({super.key});
  final List circularAvatars = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
    "assets/6.png",
    "assets/7.png",
  ];
  final colors = [
    const Color.fromARGB(255, 241, 187, 184),
    const Color.fromARGB(255, 230, 215, 172),
    const Color.fromARGB(255, 178, 186, 231),
    const Color.fromARGB(255, 174, 205, 231),
    const Color.fromARGB(255, 238, 168, 191),
    const Color.fromARGB(255, 187, 158, 236),
    const Color.fromARGB(255, 156, 255, 245),
    const Color.fromARGB(255, 174, 205, 231),
    const Color.fromARGB(255, 241, 187, 184),
    const Color.fromARGB(255, 178, 186, 231),
  ];
  final names = [
    "Nisma",
    "Rimsha",
    "Saqlain",
    "Aiman",
    "Marukh",
    "Saad",
    "Nabiya",
    "Shabnum",
    "Sajjad",
    "Shandara",
  ];
  final List userProfile = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/4.png",
    "assets/4.png",
    "assets/4.png",
    "assets/4.png",
    "assets/4.png",
    "assets/4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
                width: screenWidth(context),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "Messages",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "STORIES",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListviewForStories(
                          circularAvatars: circularAvatars,
                          colors: colors,
                          names: names)
                    ],
                  ),
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            flex: 6,
            child: Container(
              width: screenWidth(context),
              color: Colors.white,
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: Container(
                      // width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colors[index],
                      ),
                      child: Image.asset(userProfile[index]),
                    ),
                    title: Text(
                      names[index],
                    ),
                    subtitle: Text(
                      names[index],
                    ),
                    trailing: Text(
                      names[index],
                    ),
                  );
                }),
              ),
            ),
          ),
          Expanded(child: BottemNavigationBar())
        ],
      )),
    );
  }
}
