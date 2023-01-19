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
