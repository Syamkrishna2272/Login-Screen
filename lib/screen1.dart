import 'package:flutter/material.dart';
import 'package:my_first_app/main.dart';
import 'package:my_first_app/screen2.dart';
  import 'package:shared_preferences/shared_preferences.dart';

class Screenone extends StatelessWidget {
  Screenone({super.key});
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),

      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                    'assets/images/Whatsapp-Icon-Green-PNG-Clipart.png'),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: ' username ',
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: ' Password  ',
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    checklogin(context);
                  },
                  child: Text("Sign In "))
            ],
          ),
        ),
      )),
    );
  }

  void checklogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == 'admin' && _password == '1234') {
      final sharedprefs = await SharedPreferences.getInstance();
      sharedprefs.setBool(key1, true);

      Navigator.of(ctx).pushReplacement(MaterialPageRoute(
        builder: (ctx) {
          return ScreenTwo();
        },
      ));
    } else {
      // snackbar
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(25),
          content: Text("User name password doesnot match")));

      //show dialog

      // showDialog(context: ctx,
      // builder: (ctx1){x
      // return AlertDialog(
      // title: Text("User name password doesnot match"),
      // );
      //  });

      //alert dialoge

      // showDialog(
      //     context: ctx,
      //     builder: (ctx1) {
      //       return AlertDialog(
      //         title: Text("person $index"),
      //         actions: [
      //           TextButton(
      //               onPressed: () {
      //                 Navigator.of(context).pop();
      //               },
      //               child: Text('close')),
      //         ],
      //       );
      //     });

      // Snack bar

      // ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
      //     behavior: SnackBarBehavior.floating,
      //     backgroundColor: Colors.red,
      //     margin: EdgeInsets.all(25),
      //     content: Text("pesron $index")));
    }
  }
}
