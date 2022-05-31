import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/router.gr.dart';
import '../values/values.dart';
import '../widgets/button_widget.dart';
import '../widgets/dark_overlay.dart';
import '../widgets/spaces.dart';
import '../widgets/textFormField_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          Positioned(
              child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView(children: [
              SpaceH16(),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: () {
                      context.router.navigateBack();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: Sizes.MARGIN_12,
                        right: Sizes.MARGIN_12,
                        top: Sizes.MARGIN_4,
                        bottom: Sizes.MARGIN_4,
                      ),
                      child: Image.asset(
                        "assets/images/arrow_back.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: Sizes.TEXT_SIZE_20,
                        fontFamily: "Josefin Sans",
                        color: Colors.white),
                  ),
                  const Spacer(),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: Sizes.MARGIN_60),
                child: const Text(
                  "Enter your email and we will sendyou instructions on how to reset it",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Josefin Sans",
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: Sizes.TEXT_SIZE_20),
                ),
              ),
              const SizedBox(
                height: Sizes.HEIGHT_60,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
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
                height: Sizes.HEIGHT_100,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
                child: ButtonWidget(
                  buttonName: "Send",
                  onPress: () {
                    AutoRouter.of(context).push(const WelcomeScreenRoute());
                  },
                ),
              ),
            ]),
          ))
        ],
      ),
    );
  }
}
