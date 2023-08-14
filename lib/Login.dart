// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatsapp/homeScreen.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final textcontroller1 = TextEditingController();
  final textcontroller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getSaved(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.white,
        centerTitle: true,
        elevation: null,
        backgroundColor: Colors.white,
        title: Text(
          'Welcome to Whatsapp',
          style: TextStyle(color: Color(0xFF128C7E)),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: textcontroller1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your username',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: textcontroller2,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          focusColor: Color.fromRGBO(18, 140, 126, 1),
                          labelText: "Enter your mobile number",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      printv();
                      getSaved(context);
                    },
                    child: Text('Submit'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> printv() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('username', textcontroller1.text);
    await sharedPreferences.setString('phone number', textcontroller2.text);
  }

  static Future<void> getSaved(BuildContext context) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final saved1 = sharedPreferences.getString('username');
    final saved2 = sharedPreferences.getString('phone number');
    if (saved1 != null && saved2 != null) {
      print(saved1);
      print(saved2);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((context) => homeScreen())));
    }
  }
}
