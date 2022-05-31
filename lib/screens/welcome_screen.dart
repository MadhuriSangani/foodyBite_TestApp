import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/router.gr.dart';
import '../widgets/button_widget.dart';
import '../widgets/dark_overlay.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0.0,
              child: Image.asset(
                'assets/images/salad.png',
                height: heightOfScreen,
                width: widthOfScreen,
                fit: BoxFit.cover,
              )),
          DarkOverLay(
            height: heightOfScreen,
            width: widthOfScreen,
          ),
          Container(
            padding: const EdgeInsets.only(top: 35, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(57, 255, 255, 255),
                      ),
                    ),
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      context.router.push(const RootScreenRoute());
                    })
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 35, right: 35, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Hi John,",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 48,
                      fontFamily: "Josefin Sans"),
                ),
                const Text(
                  "Welcome to",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 48,
                      fontFamily: "Josefin Sans"),
                ),
                const Text(
                  "FoodyBite",
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.w700,
                      fontSize: 48,
                      fontFamily: "Josefin Sans"),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Please turn on your GPS to find out better restarant suggestions near you.",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Josefin Sans",
                      fontSize: 20,
                      wordSpacing: 2),
                ),
                const SizedBox(
                  height: 50,
                ),
                ButtonWidget(buttonName: "Turn On GPS", onPress: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}
