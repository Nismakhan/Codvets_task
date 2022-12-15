import 'package:flutter/material.dart';

// void main() {
//   runApp(const login());
// }

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    "assets/Ellipse 342.png",
                    width: 300,
                    height: 200,
                  ),
                  Positioned(
                    top: 25,
                    left: 50,
                    child: Image.asset(
                      "assets/Ellipse 343.png",
                      width: 200,
                      height: 150,
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 66,
                    child: Image.asset(
                      "assets/Ellipse 333.png",
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: 66,
                    child: Image.asset(
                      "assets/Ellipse 338.png",
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 140,
                    child: Image.asset(
                      "assets/Ellipse 341.png",
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 65,
                    child: Image.asset(
                      "assets/Group 1291.png",
                      width: 170,
                      height: 120,
                    ),
                  ),
                  Positioned(
                    top: 280,
                    left: 3,
                    child: Image.asset(
                      "assets/Group 1300.png",
                    ),
                  ),
                  Positioned(
                    bottom: -15,
                    left: -35,
                    child: Image.asset(
                      "assets/Ellipse 327.png",
                    ),
                  ),
                  Positioned(
                    bottom: -15,
                    left: -35,
                    child: Image.asset(
                      "assets/blackshirt_man.png",
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 65,
                    child: Image.asset(
                      "assets/Ellipse 332.png",
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    right: -7,
                    child: Image.asset(
                      "assets/Ellipse 330.png",
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    right: 86,
                    child: Image.asset(
                      "assets/Ellipse 336.png",
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    right: -7,
                    child: Image.asset(
                      "assets/pretty-curly-woman-holds-modern-mobile-phone-types-messages-smartphone-device-enjoys-online-communication-downloads-special-app-chatting-smiles-tenderly-isolated-purple-wall.png",
                    ),
                  ),
                  Positioned(
                    top: -30,
                    left: 40,
                    child: Image.asset(
                      "assets/Ellipse 329.png",
                    ),
                  ),
                  Positioned(
                    top: -30,
                    left: 40,
                    child: Image.asset(
                      "assets/Ellipse 338.png",
                    ),
                  ),
                  Positioned(
                    top: -30,
                    left: 40,
                    child: Image.asset(
                      "assets/happy-teenage-girl-with-curly-hair-holds-modern-mobile-phone-takeout-coffee-orders-taxi-via-online-application-types-text-message-wears-yellow-clothing-people-modern-lifestyle-technology.png",
                    ),
                  ),
                  Positioned(
                    top: -27,
                    right: -45,
                    child: Image.asset(
                      "assets/Ellipse 331.png",
                    ),
                  ),
                  Positioned(
                    top: -27,
                    right: -45,
                    child: Image.asset(
                      "assets/portrait-cool-young-black-man-with-curly-hair-has-cheerful-expression.png",
                    ),
                  ),
                  Positioned(
                    top: 69,
                    right: 13,
                    child: Image.asset(
                      "assets/Ellipse 339.png",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                "The Best Social App To",
                style: TextStyle(
                  fontFamily: "Times new roman",
                  fontSize: 18,
                  color: Colors.black,
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
                      color: Colors.black,
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
                      // fontFamily: "Times new roman",
                      color: Colors.black,
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
                    // style: ButtonStyle(
                    //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    //     RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10),
                    //       side: const BorderSide(
                    //         color: Colors.white,
                    //         width: 7,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color.fromARGB(255, 51, 49, 49),
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
    );
  }
}
