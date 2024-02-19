import 'package:flutter/material.dart';
//import 'package:shop_app/constants.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  State<SplashContent> createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        // const Text(
        //   "PREMIER PAS AVEC CERO UZISHA",
        //   style: TextStyle(
        //     fontSize: 32,
        //     color: kPrimaryColor,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        Image.asset(
          widget.image!,
          height: 265,
          width: 235,
        ),
        const Spacer(flex: 2),
         Text(
          widget.text!,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
