import 'package:flutter/material.dart';
import 'package:ui/login.dart';

void main() {
  runApp(const Ui());
}

class Ui extends StatelessWidget {
  const Ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: 350,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 97, 96, 96),
                Color.fromARGB(255, 15, 48, 15),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      "assets/Group 1166.png",
                      width: 250,
                      height: 200,
                    ),
                    Positioned(
                      bottom: 80,
                      left: 30,
                      child: Image.asset(
                        "assets/Ellipse 273.png",
                      ),
                    ),
                    Positioned(
                      bottom: 100,
                      right: 27,
                      child: Image.asset(
                        "assets/Ellipse 275.png",
                      ),
                    ),
                    Positioned(
                      bottom: 87,
                      right: 30,
                      child: Image.asset(
                        "assets/Ellipse 276.png",
                      ),
                    ),
                    Positioned(
                      bottom: 75,
                      right: 35,
                      child: Image.asset(
                        "assets/Ellipse 277.png",
                      ),
                    ),
                    Positioned(
                      bottom: 210,
                      right: 25,
                      child: Image.asset(
                        "assets/Group 1299.png",
                      ),
                    ),
                    Positioned(
                      top: 280,
                      left: 3,
                      child: Image.asset(
                        "assets/Group 1301.png",
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Image.asset(
                        "assets/Mask Group 35.png",
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "The Best Social App To",
                  style: TextStyle(
                    fontFamily: "Times new roman",
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Make New Friends",
                      style: TextStyle(
                        fontFamily: "Times new roman",
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "!",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 233, 148, 20),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Find people with the same",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "interest as you",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 250,
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  height: 50,
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
                    onPressed: () {},
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
