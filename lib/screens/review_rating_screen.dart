import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../values/values.dart';
import '../widgets/ratings_widget.dart';

class ReviewRatingScreen extends StatelessWidget {
  const ReviewRatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentTab = 4;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "Review & Ratings",
            style: Styles.customTitleTextStyle(
              color: AppColors.headingText,
              fontWeight: FontWeight.w600,
              fontSize: Sizes.TEXT_SIZE_22,
            ),
          ),
          leading: InkWell(
            onTap: () {
              context.router.pop();
            },
            child: Image.asset("assets/images/symbol-5--15.png"),
          ),
        ),
        body: Container(
          child: ListView(
            children: createUserListTiles(numberOdUser: 10),
          ),
        ));
  }

  List<Widget> createUserListTiles({required numberOdUser}) {
    List<Widget> userListTiles = [];

    List<String> imagePaths = [
      ImagePath.profile1,
      ImagePath.profile2,
      ImagePath.profile3,
      ImagePath.profile4,
      ImagePath.profile1,
      ImagePath.profile2,
      ImagePath.profile3,
      ImagePath.profile4,
      ImagePath.profile1,
      ImagePath.profile2,
    ];

    List<String> userNames = [
      "Collin Fields",
      "Sherita Burns",
      "Bill Sacks",
      "Romeo Folie",
      "Pauline Cobbina",
      "Collin Fields",
      "Sherita Burns",
      "Bill Sacks",
      "Romeo Folie",
      "Pauline Cobbina",
    ];

    List<String> description = [
      "Lorem Ipsum baga fada",
      "Lorem Ipsum baga fada",
      "Lorem Ipsum baga fada",
      "Lorem Ipsum baga fada",
      "Lorem Ipsum baga fada",
      "Lorem Ipsum baga fada",
      "Lorem Ipsum baga fada",
      "Lorem Ipsum baga fada",
      "Lorem Ipsum baga fada",
      "Lorem Ipsum baga fada",
    ];

    List<String> ratings = [
      "4.0",
      "3.0",
      "5.0",
      "2.0",
      "4.0",
      "4.0",
      "3.0",
      "5.0",
      "2.0",
      "4.0",
    ];

    List<int> list = List<int>.generate(numberOdUser, (i) => i + 1);

    list.forEach((i) {
      userListTiles.add(ListTile(
          leading: Image.asset(imagePaths[i - 1]),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                userNames[i - 1],
                style: TextStyle(
                  color: AppColors.headingText,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Josefin Sans",
                  fontSize: Sizes.TEXT_SIZE_18,
                ),
              ),
              Ratings(ratings[i - 1]),
            ],
          ),
          subtitle: Text(
            description[i - 1],
            style: TextStyle(
                color: AppColors.accentText, fontSize: Sizes.TEXT_SIZE_14),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8)));
    });
    return userListTiles;
  }
}
