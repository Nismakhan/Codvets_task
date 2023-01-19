import 'package:flutter/material.dart';
import 'package:ui/app/router.dart';
import 'package:ui/utils/mediaquery.dart';

import '../widgets/widgets.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
  List circularAvatars = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
    "assets/6.png",
    "assets/7.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        body: Column(
          children: [
            Container(
              width: screenWidth(context),
              height: screenHeight(context) * 0.17,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset("assets/orange curve1.png"),
                        ),
                        Container(
                          child: Row(
                            children: [
                              ContainerContainCard(
                                stack: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Image.asset(
                                      "assets/notification.png",
                                      width: 20,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: -13,
                                      left: 20,
                                      child: Image.asset(
                                          "assets/small orange.png"),
                                    )
                                  ],
                                ),
                              ),
                              ContainerContainCard(
                                stack: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Image.asset(
                                      "assets/message.png",
                                      width: 20,
                                      height: 40,
                                    ),
                                    Positioned(
                                      top: -13,
                                      left: 20,
                                      child: Container(
                                        width: 30,
                                        height: 16,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Colors.red,
                                        ),
                                        child: const Center(
                                            child: Text(
                                          "34+",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: circularAvatars.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final circleAvatars = circularAvatars[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 199, 230, 255),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red, width: 3),
                            ),
                            child: Image.asset(circleAvatars),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: screenWidth(context) * 0.9,
              height: screenHeight(context) * 0.17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Container(
                      // width: 90,
                      // height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.red, width: 3),
                        color: const Color.fromARGB(255, 255, 174, 228),
                      ),
                      child: Image.asset(
                        "assets/6.png",
                      ),
                    ),
                    title: const Text(
                      "Write something...",
                      style: TextStyle(
                        color: Color.fromARGB(255, 146, 146, 146),
                      ),
                    ),
                    trailing: const Icon(Icons.edit),
                  ),
                  const Divider(
                    thickness: 1.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 19.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.emoji_emotions,
                          color: Color.fromARGB(255, 189, 171, 13),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.image,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        Container(
                          width: 100,
                          height: 35,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 228, 211, 62),
                                Colors.deepOrange,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, AppRouter.chat);
                            },
                            child: const Text(
                              "Share",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: screenWidth(context) * 0.9,
              height: screenHeight(context) * 0.41,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                        leading: Container(
                          // width: 90,
                          // height: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 3),
                            color: const Color.fromARGB(255, 158, 245, 146),
                          ),
                          child: Image.asset(
                            "assets/6.png",
                          ),
                        ),
                        title: const Text(
                          "Bamsel Cooper",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text(
                          "Photographer",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        trailing: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 250, 155, 148),
                                  width: 3),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.more_vert_outlined,
                            ))),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/pink circle.png",
                          height: 180,
                          width: 300,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/Icon ionic-ios-heart.png",
                                width: 30,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "assets/chat.png",
                                width: 30,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "assets/send.png",
                                width: 30,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "He also has a handle on social media, and\n his blog focus on social media photo...",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Container(
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
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRouter.dashboard),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  GestureDetector(
                    child: const Icon(
                      Icons.person,
                      size: 50,
                    ),
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRouter.user),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  GestureDetector(
                    child: const Icon(
                      Icons.explore,
                      size: 50,
                    ),
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
                        Navigator.of(context).pushNamed(AppRouter.chat),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
