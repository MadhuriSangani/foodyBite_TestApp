import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/widgets/custom_text_form_field.dart';
import 'package:foodybite_testapp/widgets/potbelly_button.dart';
import 'package:foodybite_testapp/widgets/ratings_widget.dart';
import 'package:foodybite_testapp/widgets/spaces.dart';

import '../values/values.dart';

class AddRatingScreen extends StatefulWidget {
  const AddRatingScreen({Key? key}) : super(key: key);

  @override
  State<AddRatingScreen> createState() => _AddRatingScreenState();
}

class _AddRatingScreenState extends State<AddRatingScreen> {
  TextStyle subTitleTextStyle = Styles.customNormalTextStyle(
    color: AppColors.accentText,
    fontSize: Sizes.TEXT_SIZE_16,
  );
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Review & Ratings",
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
            child: Image.asset("assets/images/close_icon.png"),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: Sizes.MARGIN_16),
        child: Column(
          children: [
            RatingsBar(
              hasTitle: false,
            ),
            SpaceH30(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Sizes.MARGIN_30),
              child: CustomTextFormField(
                hintText: 'Write your experience',
                prefixIconImagePath: "",
                hasPrefixIcon: false,
                maxLines: 10,
                hintTextStyle: subTitleTextStyle,
                borderWidth: Sizes.WIDTH_1,
                borderRadius: Sizes.RADIUS_12,
                borderStyle: BorderStyle.solid,
                focusedBorderColor: AppColors.indigo,
                contentPaddingHorizontal: Sizes.MARGIN_16,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: PotbellyButton(
                  'Done',
                  onTap: () {
                    context.router.pop();
                  },
                  buttonHeight: 65,
                  buttonWidth: MediaQuery.of(context).size.width,
                  decoration: Decorations.customHalfCurvedButtonDecoration(
                      topleftRadius: Sizes.RADIUS_24,
                      topRightRadius: Sizes.RADIUS_24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
