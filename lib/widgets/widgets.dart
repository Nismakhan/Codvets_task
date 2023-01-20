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
    required this.clrForTet,
    required this.clrForBackground,
    required this.width,
    required this.height,
  }) : super(key: key);
  final String text;
  final MaterialColor clrForTet;
  final MaterialColor clrForBackground;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 209, 209, 209),
          borderRadius: BorderRadius.circular(19)),
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
