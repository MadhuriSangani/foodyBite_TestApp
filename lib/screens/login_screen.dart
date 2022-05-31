import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/router.gr.dart';
import '../widgets/button_widget.dart';
import '../widgets/dark_overlay.dart';
import '../widgets/textFormField_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  TextEditingController controller = TextEditingController();

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
                'assets/images/boiled_eggs.png',
                height: heightOfScreen,
                width: widthOfScreen,
                fit: BoxFit.cover,
              )),
          DarkOverLay(
            height: heightOfScreen,
            width: widthOfScreen,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Text(
                    "FoodyBite",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Josefin Sans"),
                    textAlign: TextAlign.center,
                  ),
                )),
                TextFormFieldWidget(
                  controller: controller,
                  labelName: "Email",
                  iconName: Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  controller: controller,
                  labelName: "Password",
                  iconName: Icon(
                    Icons.lock_open_outlined,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(ForgotPasswordScreenRoute());
                  },
                  child: const Text(
                    "forgot password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Josefin Sans",
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ButtonWidget(
                  buttonName: "Login",
                  onPress: () {
                    //AutoRouter.of(context).pushNamed('/welcome-screen');
                    AutoRouter.of(context).push(const WelcomeScreenRoute());
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(SignUpScreenRoute());
                    //context.router.push(SignUpScreenRoute());
                  },
                  child: const Text(
                    "Create New Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontFamily: "Josefin Sans",
                        fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
