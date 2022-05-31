import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routes/router.gr.dart';
import '../widgets/button_widget.dart';
import '../widgets/dark_overlay.dart';
import '../widgets/textFormField_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

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
                'assets/images/pancakes_in_a_pan.png',
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
                Expanded(
                  flex: 2,
                  child: CupertinoButton(
                    onPressed: () {
                      //showPhotoption();
                    },
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(57, 255, 255, 255),
                      radius: 80,
                      child: ClipRect(
                        child: Image.asset(
                          'assets/images/person_grey_icon.png',
                          scale: 0.6,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: TextFormFieldWidget(
                    controller: controller,
                    labelName: "Name",
                    iconName: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Flexible(
                  child: TextFormFieldWidget(
                    controller: controller,
                    labelName: "Email",
                    iconName: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Flexible(
                  child: TextFormFieldWidget(
                    controller: controller,
                    labelName: "Password",
                    iconName: Icon(
                      Icons.lock_open_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Flexible(
                  child: TextFormFieldWidget(
                    controller: controller,
                    labelName: "Confirm Password",
                    iconName: Icon(
                      Icons.lock_open_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonWidget(
                  buttonName: "Register",
                  onPress: () {
                    //AutoRouter.of(context).pushNamed('/welcome-screen');
                    //AutoRouter.of(context).push(WelcomeScreenRoute());
                    context.router.push(LoginScreenRoute());
                  },
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontFamily: "Josefin Sans",
                          fontSize: 16),
                    ),
                    GestureDetector(
                      child: const Text(
                        "Login",
                        style:
                            TextStyle(fontSize: 16, color: Colors.deepPurple),
                      ),
                      onTap: () {
                        context.router.push(LoginScreenRoute());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
