import 'package:flutter/material.dart';

class ContainerContainCard extends StatelessWidget {
  const ContainerContainCard({Key? key, required this.stack}) : super(key: key);
  final Stack stack;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
        ),
        child: Center(
          child: stack,
        ),
      ),
    );
  }
}

class MessagesContainer extends StatelessWidget {
  const MessagesContainer({
    Key? key,
    required this.text,
    this.clrForTet,
    this.clrForBackground,
    required this.width,
    required this.height,
  }) : super(key: key);
  final String text;
  final Color? clrForTet;
  final Color? clrForBackground;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: clrForBackground, borderRadius: BorderRadius.circular(19)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: clrForTet,
          ),
        ),
      ),
    );
  }
}

class ChatScreenBottemWidgets extends StatelessWidget {
  const ChatScreenBottemWidgets({
    Key? key,
    this.clr,
    required this.icondata,
    required this.text,
  }) : super(key: key);
  final Color? clr;
  final IconData icondata;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 55,
          decoration: BoxDecoration(
            color: clr,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icondata,
            size: 35,
            color: Colors.white,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
