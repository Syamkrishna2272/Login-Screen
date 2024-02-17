import 'package:flutter/material.dart';
import 'package:my_first_app/main.dart';
import 'package:my_first_app/screen1.dart';
import 'package:my_first_app/screen2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class screensplash extends StatefulWidget {
  const screensplash({super.key});

  @override
  State<screensplash> createState() => _screensplashState();
}

class _screensplashState extends State<screensplash> {
  @override
  void initState() {
    gotologin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Image.asset(
          'assets/images/Whatsapp-Icon-Green-PNG-Clipart.png',
          height: 200,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotologin() async {
    final sharedprefs = await SharedPreferences.getInstance();
    final key2 = await sharedprefs.getBool(key1);
    if (key2 == null || key2 == false) {
      golog();
    } else {
      await Future.delayed(Duration(seconds: 3));
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (ctx) {
        return ScreenTwo();
      }), (Route) => false);
    }
  }

  Future<void> golog() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return Screenone();
    }));
  }
}
