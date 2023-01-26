import 'package:flutter/material.dart';
import 'package:ui/widgets/bottem_navigaton_bar.dart';

class User extends StatefulWidget {
  User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  final List userProfile = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
  ];
  final colors = [
    const Color.fromARGB(255, 241, 187, 184),
    const Color.fromARGB(255, 230, 215, 172),
    const Color.fromARGB(255, 178, 186, 231),
    const Color.fromARGB(255, 174, 205, 231),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Notifications"),
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20),
                  child: Text(
                    "TODAY",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: userProfile.length,
                    itemBuilder: ((context, index) {
                      final profile = userProfile[index];
                      return ListTile(
                        leading: Container(
                          // width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors[index],
                          ),
                          child: Image.asset(profile),
                        ),
                        title: const Text("ddf"),
                        subtitle: const Text("data"),
                        trailing: const Text("30s"),
                      );
                    }),
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20),
                  child: Text(
                    "YESTURDAY",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: userProfile.length,
                    itemBuilder: ((context, index) {
                      final profile = userProfile[index];
                      return ListTile(
                        leading: Container(
                          // width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors[index],
                          ),
                          child: Image.asset(profile),
                        ),
                        title: const Text("ddf"),
                        subtitle: const Text("data"),
                        trailing: const Text("30s"),
                      );
                    }),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: BottemNavigationBar(),
              )
            ],
          )),
    );
  }
}
