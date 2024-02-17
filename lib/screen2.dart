import 'package:flutter/material.dart';
import 'package:my_first_app/screen1.dart';
import 'package:my_first_app/screen3.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Whatsapp "),
        actions: [
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) {
                      return AlertDialog(
                        content: Text('Do you want to logout'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                logout(context);
                              },
                              child: Text('Yes')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('No')),
                        ],
                      );
                    });
              },
              child: Text(
                "SignOut ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ))
        ],
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text("Person $index"),
                  leading: index.isEven
                      ? CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                              'assets/images/contacts-icon-png-9.jpg'),
                        )
                      : Image(
                          width: 60,
                          image: AssetImage(
                              'assets/images/WhatsApp Image 2023-09-02 at 18.35.50.jpg')),
                  trailing: Text("$index:25 "),
                  subtitle: Text("Hey there iam using whatsapp "),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return ScreenThree();
                    }));
                  },
                );
              
              },
              separatorBuilder: (ctx, index) {
                return Divider(
                  height: 25,
                );
              },
              itemCount: 21)),
    );
  }
    

  Future<void> logout(BuildContext context) async {
    final sharedprefs = await SharedPreferences.getInstance();
    await sharedprefs.clear();
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx) {
      return Screenone();
    }), (route) => false);
  }
}
