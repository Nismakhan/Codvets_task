import 'package:flutter/material.dart';

import 'package:ui/utils/mediaquery.dart';

import '../widgets/widgets.dart';

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
              const MessagesContainer(
                clrForTet: Colors.grey,
                text: "YERTURDAY",
                width: 150,
                height: 40,
                clrForBackground: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: MessagesContainer(
                  clrForTet: Colors.grey,
                  text: "Hi rehan How are you?",
                  width: 170,
                  height: 60,
                  clrForBackground: Colors.grey,
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: MessagesContainer(
                  clrForTet: Colors.grey,
                  text: "I m good what about you?",
                  width: 180,
                  height: 60,
                  clrForBackground: Colors.amber,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: MessagesContainer(
                  clrForTet: Colors.grey,
                  text: "Do you want a burgur?",
                  width: 180,
                  height: 60,
                  clrForBackground: Colors.grey,
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: MessagesContainer(
                  clrForTet: Colors.grey,
                  text: "Would be awesome..",
                  width: 180,
                  height: 60,
                  clrForBackground: Colors.blue,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: MessagesContainer(
                  clrForTet: Colors.grey,
                  text: "Okey then wait for it",
                  width: 170,
                  height: 60,
                  clrForBackground: Colors.grey,
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: MessagesContainer(
                  clrForTet: Colors.grey,
                  text: "Thank you",
                  width: 170,
                  height: 60,
                  clrForBackground: Colors.blue,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: MessagesContainer(
                  clrForTet: Colors.grey,
                  text: "Mention NOt",
                  width: 170,
                  height: 60,
                  clrForBackground: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 40),
                    child: Container(
                      width: 50,
                      height: 70,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 36.0, left: 9),
                    child: MessagesContainer(
                      text: "Type Message Here",
                      clrForTet: Colors.grey,
                      clrForBackground: Colors.grey,
                      width: 260,
                      height: 50,
                    ),
                  )
                ],
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
