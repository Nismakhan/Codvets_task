import 'package:flutter/material.dart';

import 'package:ui/app/router.dart';

import 'package:ui/utils/mediaquery.dart';

import '../widgets/bottem_navigaton_bar.dart';
import '../widgets/widgets.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
  // final UserStories args;

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
  ];
  final names = [
    "Nisma",
    "Rimsha",
    "Saqlain",
    "Aiman",
    "Marukh",
    "Saad",
    "Nabiya"
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
              height: screenHeight(context) * 0.17711,
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
                          child: Image.asset(
                            "assets/logo.png",
                            width: 40,
                          ),
                        ),
                        Row(
                          children: [
                            IconsCardsForDashboardOnTop(
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
                                    child:
                                        Image.asset("assets/small orange.png"),
                                  )
                                ],
                              ),
                            ),
                            IconsCardsForDashboardOnTop(
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
                                        borderRadius: BorderRadius.circular(6),
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
                      ],
                    ),
                  ),
                  ListviewForStories(
                      circularAvatars: circularAvatars,
                      colors: colors,
                      names: names),
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
                    Stack(
                      clipBehavior: Clip.none,
                      children: const [
                        ListOfPersonsLikedThePost(
                          img: "assets/1.png",
                          clr: Color.fromARGB(255, 143, 200, 247),
                        ),
                        Positioned(
                          left: 15,
                          child: ListOfPersonsLikedThePost(
                            img: "assets/2.png",
                            clr: Color.fromARGB(255, 255, 246, 164),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          child: ListOfPersonsLikedThePost(
                            img: "assets/3.png",
                            clr: Color.fromARGB(255, 163, 236, 166),
                          ),
                        ),
                        Positioned(
                          left: 45,
                          child: ListOfPersonsLikedThePost(
                            img: "assets/3.png",
                            clr: Color.fromARGB(255, 172, 212, 245),
                          ),
                        ),
                        Positioned(
                          left: 100,
                          top: 7,
                          child: Text(
                            "Liked By Hayra and 1K other",
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const BottemNavigationBar(),
          ],
        ),
      ),
    );
  }
}

class UserStories {
  String name;
  String profilePic;
  UserStories({required this.name, required this.profilePic});
}
