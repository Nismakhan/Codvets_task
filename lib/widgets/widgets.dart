import 'package:flutter/material.dart';

class IconsCardsForDashboardOnTop extends StatelessWidget {
  const IconsCardsForDashboardOnTop({Key? key, required this.stack})
      : super(key: key);
  final Stack stack;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
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
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}

class ListOfPersonsLikedThePost extends StatelessWidget {
  const ListOfPersonsLikedThePost({
    Key? key,
    this.clr,
    required this.img,
  }) : super(key: key);
  final Color? clr;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: clr,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        img,
        width: 40,
      ),
    );
  }
}

class ListviewForStories extends StatelessWidget {
  const ListviewForStories({
    Key? key,
    required this.circularAvatars,
    required this.colors,
    required this.names,
  }) : super(key: key);

  final List circularAvatars;
  final List<Color> colors;
  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: circularAvatars.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final avatars = circularAvatars[index];
          final color = colors[index];

          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red, width: 3),
                  ),
                  child: Image.asset(avatars),
                ),
                Text(names[index]),
              ],
            ),
          );
        },
      ),
    );
  }
}
