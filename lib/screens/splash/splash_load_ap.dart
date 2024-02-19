import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/components/splash_content.dart';

// ignore: camel_case_types
class splash_load extends StatefulWidget {
  static String routeName = "/loading";

  const splash_load({super.key});

  @override
  State<splash_load> createState() => _splash_load();
}

// ignore: camel_case_types
class _splash_load extends State<splash_load> {
  List<Map<String, String>> splashData = [
    {"image": "assets/images/splash_1.png", 
      "text": "Chargement..."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: <Widget> [
        Expanded(
          child:
            Center(
              child: PageView.builder(
                // onPageChanged: (value) {
                //   setState(() {
                //     currentPage = value;
                //   });
                // },
                // itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
        )
      ],
    )));
  }

  startTime() async {
    Duration duration = const Duration(seconds: 10);
    return Timer(duration, navigatePage);
  }

  void navigatePage() => Navigator.of(context).pushReplacementNamed('/splash');
  @override
  void initState() {
    super.initState();
    startTime();
  }
}
