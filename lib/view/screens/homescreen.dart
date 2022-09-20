// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:videogame_api/view/widgets/buttons.dart';
// import 'package:videogame_api/view/widgets/container.dart';

// class Homescreen extends StatefulWidget {
//   const Homescreen({Key? key}) : super(key: key);

//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }

// class _HomescreenState extends State<Homescreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xff050B18),
//         elevation: 1,
//         leadingWidth: 44,
//         leading: const CircleAvatar(
//           backgroundColor: Color(0xff7560E3),
//           radius: 28,
//           child: CircleAvatar(
//             radius: 21,
//             backgroundImage: AssetImage("assets/images/Ellipse 2 (1).png"),
//           ),
//         ),
//         title: Transform(
//           transform: Matrix4.translationValues(1.0, 0.0, 0.0),
//           child: const Text(
//             "John",
//             style: TextStyle(
//                 color: Colors.white, fontWeight: FontWeight.w700, fontSize: 23),
//           ),
//         ),
//         actions: [searchButton(), notificationButton()],
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(color: Color(0xff050B18)),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             // ignore: prefer_const_literals_to_create_immutables
//             children: [
//               textLabel(label: "Popular"),
//               Column(
//                 children: [
//                   popularContainer(),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 8.0),
//                     child: divider(),
//                   ),
//                   tagssmallList(categoryname: "Xbox PS2"),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 8.0),
//                     child: tagsLargeList(categoryname: "Action"),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 290.0),
//                     child: textLabel(label: "Today"),
//                   ),
//                   commonContainer(),
//                   commonContainerType2(),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 248.0),
//                     child: textLabel(label: "This Week"),
//                   ),
//                   commonContainer(),
//                   commonContainerType2(),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
