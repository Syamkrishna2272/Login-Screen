import 'package:flutter/material.dart';
import 'package:my_first_app/screensplash.dart';
const key1='admin';
main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: screensplash(),
    
    );
  }
}