import 'package:flutter/material.dart';

import 'package:ui/utils/mediaquery.dart';

class Chat extends StatelessWidget {
  Chat({
    super.key,
    // required this.args,
  });
  // final ChatData args;

  final sentByMe = [
    "Hi, Rehan How are you?",
    "Do You Want a burger?",
    "Okey take care of yourself"
  ];
  final sentByOthers = [
    "I'm good. what about you?",
    "Would be awesome.",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  // width: 90,
                  // height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red, width: 3),
                    color: const Color.fromARGB(255, 255, 194, 103),
                  ),
                  child: Image.asset(
                    "assets/6.png",
                  ),
                ),
                title: const Text(
                  "Ahmad Haris",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Active Now",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                  width: screenWidth(context) * 0.2,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.voice_chat,
                        color: Colors.red,
                        size: 38,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.phone,
                        color: Colors.green,
                        size: 38,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 209, 209, 209),
                    borderRadius: BorderRadius.circular(19)),
                child: const Center(
                  child: Text(
                    "YESTERDAY",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromARGB(255, 114, 114, 114),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class ChatData {
//   final List<Messages> msgz;
//   bool isSentByMe;
//   ChatData({
//     required this.msgz,
//     required this.isSentByMe,
//   });
// }
