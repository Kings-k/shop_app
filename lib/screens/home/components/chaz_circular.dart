import 'package:flutter/material.dart';
class chaz_circular extends StatefulWidget {
  const chaz_circular({super.key});

  @override
  State<chaz_circular> createState() => _chaz_circularState();
}

class _chaz_circularState extends State<chaz_circular> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Image(
          image: AssetImage("assets/images/circChas.PNG"),
          // height: 400,
          width: double.infinity ,
          ),
      ],
    );
  }
}