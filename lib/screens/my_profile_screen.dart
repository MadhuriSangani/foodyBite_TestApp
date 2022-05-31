import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/routes/router.gr.dart';
import 'package:foodybite_testapp/widgets/potbelly_button.dart';
import 'package:foodybite_testapp/widgets/spaces.dart';

import '../values/values.dart';
import '../widgets/foodybite_card_widget.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    int currentTab = 3;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "My Profile",
          style: Styles.customTitleTextStyle(
            color: AppColors.headingText,
            fontWeight: FontWeight.w600,
            fontSize: Sizes.TEXT_SIZE_22,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: Sizes.MARGIN_8),
        child: ListView(
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(ImagePath.andy),
                  minRadius: Sizes.RADIUS_60,
                  maxRadius: Sizes.RADIUS_60,
                ),
                SpaceH8(),
                Text(
                  "John Williams",
                  style: Styles.foodyBiteTitleTextStyle,
                ),
                SpaceH8(),
                Text(
                  "john.williams@gmail.com",
                  style: Styles.foodyBiteSubtitleTextStyle,
                ),
              ],
            ),
            SpaceH24(),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  details(
                    number: "250",
                    text: "Reviews",
                    ontap: () {
                      context.router.push(ReviewRatingScreenRoute());
                    },
                  ),
                  VerticalDivider(
                    width: Sizes.WIDTH_40,
                    thickness: 1,
                  ),
                  details(
                    number: "100k",
                    text: "Followers",
                    ontap: () {
                      context.router.push(FollowersScreenRoute());
                    },
                  ),
                  VerticalDivider(
                    width: Sizes.WIDTH_40,
                    thickness: 1,
                  ),
                  details(
                    number: "30",
                    text: "Following",
                    ontap: () {
                      context.router.push(FollowingsScreenRoute());
                    },
                  ),
                  SpaceH24(),
                ],
              ),
            ),
            SpaceH24(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PotbellyButton(
                  'Edit Profile',
                  onTap: () {
                    context.router.push(EditProfileScreenRoute());
                  },
                  buttonWidth: MediaQuery.of(context).size.width / 3,
                  buttonHeight: Sizes.HEIGHT_50,
                ),
                SpaceW16(),
                PotbellyButton(
                  'Settings',
                  onTap: () {
                    context.router.push(SettingsScreenRoute());
                  },
                  buttonWidth: MediaQuery.of(context).size.width / 3,
                  buttonHeight: Sizes.HEIGHT_50,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    border: Border.all(color: AppColors.indigo),
                    borderRadius: BorderRadius.all(
                      Radius.circular(Sizes.RADIUS_8),
                    ),
                  ),
                  buttonTextStyle: Styles.customNormalTextStyle(
                      color: AppColors.accentText,
                      fontSize: Sizes.TEXT_SIZE_16),
                ),
              ],
            ),
            Divider(
              height: Sizes.HEIGHT_40,
              thickness: 3,
              color: Colors.grey[200],
            ),
            Column(
              children: <Widget>[
                FoodyBiteCard(
                  imagePath: ImagePath.dinnerIsServed,
                  status: StringConst.STATUS_OPEN,
                  cardTitle: "Gramercy Tavern",
                  category: StringConst.ITALIAN,
                  distance: "12 km",
                  address: "394 Broome St, New York, NY 10013, USA",
                  isThereStatus: false,
                  onTap: () {},
                ),
                SpaceH16(),
                FoodyBiteCard(
                  imagePath: ImagePath.breakfastInBed,
                  status: StringConst.STATUS_OPEN,
                  cardTitle: "Happy Bones",
                  category: StringConst.ITALIAN,
                  distance: "12 km",
                  address: "394 Broome St, New York, NY 10013, USA",
                  isThereStatus: false,
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class details extends StatelessWidget {
  final String number;
  final String text;
  final GestureTapCallback ontap;
  const details({
    required this.number,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            number,
            style: Styles.customNormalTextStyle(
                color: AppColors.secondaryElement,
                fontSize: Sizes.TEXT_SIZE_18,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: ontap,
            child: Text(
              text,
              style: Styles.foodyBiteSubtitleTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
