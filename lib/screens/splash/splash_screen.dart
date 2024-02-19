import 'package:flutter/material.dart';

import '../../constants.dart';
import '../sign_in/sign_in_screen.dart';
import 'components/splash_content.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  bool isChecked = false;
  List<Map<String, String>> splashData = [
    {
      // "titre":"Premier pas avec cero uzisha",
      "text": "Premier pas avec cero uzisha \nBienvenue sur cero  \nLaisse nous vous facilité  la vie",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "Utilisation facile\nAvec des interfaces personnaliser et adapter \nà tout type d'appareil",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Vos rapport à porter des... \nConsulter vos rapport de partout avec une flexibilité",
      "image": "assets/images/splash_3.png"
    },
    {
      "text": "Synchronisation \nTravailler offline sans  connection \nInternet",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child:
                
                 PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    // text: splashData[index]['titre'],
                    image: splashData[index]["image"],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => AnimatedContainer(
                            duration: kAnimationDuration,
                            margin: const EdgeInsets.only(right: 5),
                            height: 6,
                            width: currentPage == index ? 20 : 6,
                            decoration: BoxDecoration(
                              color: currentPage == index
                                  ? kPrimaryColor
                                  : const Color(0xFFD8D8D8),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 3),
                      Column(
                    children: [
                      Row(children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          // Text("Accepter")
                        ),
                        const Text(
                            "Accepter nos termes et conditions"),
                      ]),
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                          ),
                          child: TextButton(
                            onPressed: () {
                              // navigatePage("condition");
                            },
                            child: const Text(
                              'Lire nos termes et condionts',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )),
                      Column(
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: isChecked
                                ? () {
                                 Navigator.pushNamed(context, SignInScreen.routeName);

                                  }
                                : null,
                            child: const Text("Continuer"),
                          )
                        ],
                      )
                    ],
                  )
                      // const Spacer(),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, SignInScreen.routeName);
                      //   },
                      //   child: const Text("Continue"),
                      // ),
                      // const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
