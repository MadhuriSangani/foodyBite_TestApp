import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import '../values/values.dart';
import '../widgets/potbelly_button.dart';

class FollowingsScreen extends StatelessWidget {
  const FollowingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Followings",
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
      body: ListView(
        children: createUserListTiles(numberOdUser: 10),
      ),
    );
  }

  List<Widget> createUserListTiles({required numberOdUser}) {
    List<Widget> userListTiles = [];

    List<String> imagePaths = [
      ImagePath.profile4,
      ImagePath.profile1,
      ImagePath.profile2,
      ImagePath.profile3,
      ImagePath.profile1,
      ImagePath.profile2,
      ImagePath.profile3,
      ImagePath.profile4,
      ImagePath.profile1,
      ImagePath.profile2,
    ];

    List<String> userNames = [
      "Taylor Marks",
      "Daisy Frederick",
      "Bill Sacks",
      "Alex Perrish",
      "Teresa Russo",
      "Wilson Hensley",
      "Anabel Leach",
      "Abbigail Carter",
      "Deven Berry",
      "Ashlee Rollins",
    ];

    List<String> description = [
      "10 Rated Restaurant",
      "44 Rated Restaurant",
      "33 Rated Restaurant",
      "25 Rated Restaurant",
      "35 Rated Restaurant",
      "38 Rated Restaurant",
      "21 Rated Restaurant",
      "20 Rated Restaurant",
      "25 Rated Restaurant",
      "12 Rated Restaurant",
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
              PotbellyButton(
                'Unfollow',
                onTap: () {},
                buttonWidth: Sizes.WIDTH_100,
                buttonHeight: Sizes.HEIGHT_40,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  border: Border.all(color: AppColors.indigo),
                  borderRadius: BorderRadius.all(
                    Radius.circular(Sizes.RADIUS_8),
                  ),
                ),
                buttonTextStyle: Styles.customNormalTextStyle(
                    color: AppColors.accentText, fontSize: Sizes.TEXT_SIZE_16),
              ),
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
