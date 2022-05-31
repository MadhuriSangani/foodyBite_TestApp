import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../values/values.dart';
import '../widgets/potbelly_button.dart';

class FollowersScreen extends StatelessWidget {
  const FollowersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Followers",
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
      "50 Rated Restaurant",
      "49 Rated Restaurant",
      "48 Rated Restaurant",
      "45 Rated Restaurant",
      "40 Rated Restaurant",
      "38 Rated Restaurant",
      "35 Rated Restaurant",
      "30 Rated Restaurant",
      "25 Rated Restaurant",
      "20 Rated Restaurant",
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
                'Follow',
                onTap: () {},
                buttonWidth: Sizes.WIDTH_100,
                buttonHeight: Sizes.HEIGHT_40,
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
