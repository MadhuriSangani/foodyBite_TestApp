import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/widgets/custom_text_form_field.dart';
import 'package:foodybite_testapp/widgets/potbelly_button.dart';
import 'package:foodybite_testapp/widgets/spaces.dart';

import '../values/values.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var hintTextStyle =
        textTheme.subtitle1!.copyWith(color: AppColors.accentText);
    var textFormFieldTextStyle =
        textTheme.subtitle1!.copyWith(color: AppColors.accentText);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Edit Profile",
          style: TextStyle(
              color: Color(0xFF222455),
              fontFamily: "Josefin Sans",
              fontSize: 27),
        ),
        leading: InkWell(
          onTap: () {
            context.router.pop();
          },
          child: Image.asset("assets/images/symbol-5--15.png"),
        ),
        actions: [
          InkWell(
            onTap: () {
              context.router.pop();
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "Cancel",
                  style: textTheme.bodyText1?.copyWith(
                      color: AppColors.accentText,
                      fontSize: Sizes.TEXT_SIZE_20),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: Sizes.MARGIN_20, vertical: Sizes.MARGIN_20),
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        ImagePath.andy,
                      ),
                      maxRadius: 70,
                      minRadius: 70,
                    ),
                  ),
                ),
                Positioned(
                  left: 210,
                  top: 94,
                  child: Image.asset(
                    ImagePath.uploadIcon,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Spacer(
              flex: 1,
            ),
            CustomTextFormField(
              prefixIconImagePath: ImagePath.personGreyIcon,
              hintText: 'John Williams',
              hintTextStyle: hintTextStyle,
              textFormFieldStyle: textFormFieldTextStyle,
              hasPrefixIcon: true,
              borderWidth: Sizes.WIDTH_1,
              borderStyle: BorderStyle.solid,
            ),
            SpaceH20(),
            CustomTextFormField(
              prefixIconImagePath: ImagePath.emailIcon,
              hintText: 'johnwilliams@gmail.com',
              hintTextStyle: hintTextStyle,
              textFormFieldStyle: textFormFieldTextStyle,
              hasPrefixIcon: true,
              borderWidth: Sizes.WIDTH_1,
              borderStyle: BorderStyle.solid,
            ),
            Spacer(
              flex: 1,
            ),
            PotbellyButton('Update',
                buttonWidth: MediaQuery.of(context).size.width, onTap: () {})
          ],
        ),
      ),
    );
  }
}
