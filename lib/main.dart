import 'package:flutter/material.dart';
import 'package:whatsapp/Login.dart';

main(List<String> args) {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'splash screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const splashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    gotologin(context);
    Login.getSaved(context);
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Center(child: Text('powered by')),
            Center(child: Text('IRFAN MOHAMED')),
          ],
        ),
      ),
    );
  }

  Future<void> gotologin(BuildContext ctx) async {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: ((context) => Login())));
    });
  }
}
