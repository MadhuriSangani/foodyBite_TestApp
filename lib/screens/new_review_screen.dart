import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/widgets/ratings_widget.dart';
import 'package:foodybite_testapp/widgets/search_textfield_widget.dart';
import 'package:foodybite_testapp/widgets/spaces.dart';

import '../values/values.dart';
import '../widgets/custom_text_form_field.dart';

class NewReviewScreen extends StatefulWidget {
  static const int TAB_NO = 4;
  const NewReviewScreen({Key? key}) : super(key: key);

  @override
  State<NewReviewScreen> createState() => _NewReviewScreenState();
}

class _NewReviewScreenState extends State<NewReviewScreen> {
  TextEditingController controller = TextEditingController();
  bool showSuffixIcon = false;
  bool hasRestaurantBeenAdded = false;
  bool isCardShowing = false;
  bool canPost = false;

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
          "New Review",
          style: TextStyle(
              color: Color(0xFF222455),
              fontFamily: "Josefin Sans",
              fontSize: 27),
        ),
        leading: InkWell(
          onTap: () {
            context.router.pop();
          },
          child: Image.asset("assets/images/close_icon.png"),
        ),
        actions: [
          InkWell(
            onTap: () {
              //context.router.pop();
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "Post",
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
            horizontal: Sizes.MARGIN_16, vertical: Sizes.MARGIN_16),
        child: ListView(
          children: [
            SearchTextFieldWidget(
                textLabel: "Search Restaurants",
                controller: controller,
                suffixIcon: suffixIcon()),
            isCardShowing ? SpaceH30() : Container(),
            SpaceH30(),
            RatingsBar(),
            SpaceH30(),
            _buildReview(context: context),
          ],
        ),
      ),
    );
  }

  Widget _buildReview({required BuildContext context}) {
    var textTheme = Theme.of(context).textTheme;
    return Column(
      children: <Widget>[
        Text(
          "Review",
          style: Styles.customTitleTextStyle(
            color: AppColors.headingText,
            fontWeight: FontWeight.w600,
            fontSize: Sizes.TEXT_SIZE_20,
          ),
        ),
        SpaceH16(),
        CustomTextFormField(
          hasPrefixIcon: false,
          maxLines: 10,
          hintText: "Write your experience",
          hintTextStyle: subTitleTextStyle,
          borderWidth: Sizes.WIDTH_1,
          borderRadius: Sizes.RADIUS_12,
          borderStyle: BorderStyle.solid,
          focusedBorderColor: AppColors.indigo,
          textFormFieldStyle:
              Styles.customNormalTextStyle(color: AppColors.accentText),
          contentPaddingHorizontal: Sizes.MARGIN_16,
          prefixIconImagePath: '',
        ),
      ],
    );
  }

  Widget suffixIcon() {
    return Container(
      child: Icon(
        Icons.close,
        color: AppColors.indigo,
      ),
    );
  }
}
