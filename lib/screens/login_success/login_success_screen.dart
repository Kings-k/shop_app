import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/init_screen.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  const LoginSuccessScreen({super.key});

   void initState() {
    startTime();
  }
  // ignore: recursive_getters
  BuildContext get context => context ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("connection etablie "),
      ),
      body: Column(
        children: [
          const Spacer(),
          const SizedBox(height: 16),
          Image.asset(
            "assets/images/success.png",
            height: MediaQuery.of(context).size.height * 0.4, //40%
          ),
          const SizedBox(height: 16),
          const Text(
            "vous etez connecté",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, InitScreen.routeName);
              },
              child: const Text("aller au dashborder"),
            ),
          ),
        ],
      ),
    );
  }
  void navigatePage() => Navigator.pushNamed(context, InitScreen.routeName);
  startTime() async {
    Duration duration = const Duration(seconds: 10);
    return Timer(duration, navigatePage);
  }
 
}

