import 'package:flutter/material.dart';
class chaz_bar extends StatefulWidget {
  const chaz_bar({super.key});

  @override
  State<chaz_bar> createState() => _chaz_barState();
}

class _chaz_barState extends State<chaz_bar> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Image(
          image: AssetImage("assets/images/chatzbar.PNG"),
          // height: 400,
          width: double.infinity ,
          ),
      ],
    );
  }
}