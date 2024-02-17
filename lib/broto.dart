// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primaryColor: Color.fromARGB(223, 60, 178, 10)),
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 48, 217, 186),
//       // appBar: AppBar(
//       //   backgroundColor: Color.fromARGB(255, 151, 217, 18),
//       // ),
//       body: SafeArea(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             child: Center(
//               child: Column(
//                 children: [
//                   Text(
//                     "Flutter Sample  ",
//                     style: TextStyle(
//                       color: Color.fromARGB(255, 15, 67, 139),
//                       fontSize: 50,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   ElevatedButton(
//                       onPressed: () {
//                         print("login successfully");
//                       },
//                       child: Text("Login")),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             child: Column(
//               children: [
//                 Text(
//                   "Flutter Sample  ",
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 15, 67, 139),
//                     fontSize: 50,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       print("login successfully");
//                     },
//                     child: Text("Login")),
//               ],
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }
