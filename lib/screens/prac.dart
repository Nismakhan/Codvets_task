// import 'package:flutter/material.dart';
// import 'package:ui/models/dummy.dart';

// class Prac extends StatefulWidget {
//   const Prac({super.key, this.cntr});
//   final TextEditingController? cntr;
//   @override
//   State<Prac> createState() => _PracState();
// }

// class _PracState extends State<Prac> {
//   List colors = [
//     Colors.red,
//     const Color.fromARGB(255, 255, 166, 195),
//     const Color.fromARGB(255, 242, 167, 255),
//     Color.fromARGB(255, 155, 210, 255),
//     const Color.fromARGB(255, 243, 200, 136),
//   ];

//   final num1 = TextEditingController();

//   final num2 = TextEditingController();

//   String result = "";

//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: const Text("Practice"),
//     //   ),
//     //   body: Center(
//     //       child: Column(
//     //     children: [
//     //       TextField(
//     //         controller: num1,
//     //         style: const TextStyle(fontSize: 60),
//     //         keyboardType: TextInputType.number,
//     //       ),
//     //       TextField(
//     //         controller: num2,
//     //         style: const TextStyle(fontSize: 60),
//     //         keyboardType: TextInputType.number,
//     //       ),
//     //       const SizedBox(
//     //         height: 50,
//     //       ),
//     //       ElevatedButton(
//     //         onPressed: () {
//     //           setState(() {
//     //             int sub = (int.parse(num1.text) - int.parse(num2.text));
//     //             result = sub.toString();
//     //           });
//     //         },
//     //         child: Text("Subtract"),
//     //       ),
//     //       Row(
//     //         children: [
//     //           Text(
//     //             "total remaining: ",
//     //             style: TextStyle(
//     //               fontSize: 30,
//     //             ),
//     //           ),
//     //           SizedBox(
//     //             width: 30,
//     //           ),
//     //           Text(
//     //             result,
//     //             style: TextStyle(
//     //               fontSize: 30,
//     //             ),
//     //           ),
//     //         ],
//     //       ),
//     //     ],
//     //   )),
//     // );
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("data"),
// //       ),
// //       body: ListView.builder(
// //         itemCount: widget.args.dum.length,
// //         itemBuilder: ((context, index) {
// //           final ind = widget.args.dum[index];
// //           final col = colors[index];

// //           return Column(
// //             children: [
// //               Padding(
// //                 padding: const EdgeInsets.all(15.0),
// //                 child: ListTile(
// //                   leading: Container(
// //                       width: 70,
// //                       height: 60,
// //                       decoration: BoxDecoration(
// //                         shape: BoxShape.circle,
// //                         color: col,
// //                       ),
// //                       child: Center(
// //                           child: Text(
// //                         ind.name,
// //                         style: const TextStyle(),
// //                       ))),
// //                   title: Text(ind.study),
// //                   subtitle: Text(
// //                     ind.date.toString(),
// //                   ),
// //                   trailing: GestureDetector(
// //                     child: const Icon(Icons.delete),
// //                     onTap: () {},
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           );
// //         }),
// //       ),
// //     );
// //   }
// // }
