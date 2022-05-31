import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:foodybite_testapp/routes/router.gr.dart';
import 'package:foodybite_testapp/screens/menu_photos_screen.dart';
import 'package:foodybite_testapp/values/data.dart';
import 'package:foodybite_testapp/widgets/card_tags.dart';
import 'package:foodybite_testapp/widgets/heading_row_widget.dart';
import 'package:foodybite_testapp/widgets/potbelly_button.dart';
import 'package:foodybite_testapp/widgets/ratings_widget.dart';

import '../values/values.dart';
import '../widgets/dark_overlay.dart';
import '../widgets/restaurant_detail.dart';
import '../widgets/spaces.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final RestaurantDetails restaurantDetails;
  RestaurantDetailScreen(this.restaurantDetails, {Key? key}) : super(key: key);

  BoxDecoration fullDecorations = Decorations.customHalfCurvedButtonDecoration(
    color: Colors.black.withOpacity(0.1),
    topleftRadius: 24,
    bottomleftRadius: 24,
    topRightRadius: 24,
    bottomRightRadius: 24,
  );
  BoxDecoration leftSideDecorations =
      Decorations.customHalfCurvedButtonDecoration(
    color: Colors.black.withOpacity(0.1),
    topleftRadius: 24,
    bottomleftRadius: 24,
  );

  BoxDecoration rightSideDecorations =
      Decorations.customHalfCurvedButtonDecoration(
    color: Colors.black.withOpacity(0.1),
    topRightRadius: 24,
    bottomRightRadius: 24,
  );

  @override
  Widget build(BuildContext context) {
    var heightOfStack = MediaQuery.of(context).size.height / 2.8;
    var aPieceOfTheHeightOfStack = heightOfStack - heightOfStack / 3.5;
    var restautantDetails;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: Image.asset(
                            restaurantDetails.imagePath,
                            height: heightOfStack,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        DarkOverLay(
                          gradient: Gradients.restaurantDetailsGradient,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                        ),
                        Positioned(
                            child: Container(
                          padding: EdgeInsets.only(
                              right: Sizes.MARGIN_16, top: Sizes.MARGIN_16),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  context.router.pop();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: Sizes.MARGIN_16,
                                      right: Sizes.MARGIN_16),
                                  child: Image.asset(
                                      "assets/images/arrow_back.png"),
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  FeatherIcons.share2,
                                  color: Colors.white,
                                ),
                              ),
                              SpaceW20(),
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  "assets/images/bookmarks_icon.png",
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )),
                        Positioned(
                          top: aPieceOfTheHeightOfStack,
                          left: 24,
                          right: 24 - 0.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 4.0),
                                decoration: fullDecorations,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 8.0),
                                      width:
                                          (MediaQuery.of(context).size.width /
                                                  2) -
                                              24,
//                                      decoration: leftSideDecorations,
                                      child: Row(
                                        children: <Widget>[
                                          SizedBox(width: 4.0),
                                          Image.asset(ImagePath.callIcon),
                                          SizedBox(width: 8.0),
                                          Text(
                                            '+233 549546967',
                                            style: Styles.normalTextStyle,
                                          )
                                        ],
                                      ),
                                    ),
                                    IntrinsicHeight(
                                      child: VerticalDivider(
                                        width: 0.5,
                                        thickness: 3.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 8.0),
//                                      width:
//                                      (MediaQuery
//                                          .of(context)
//                                          .size
//                                          .width /
//                                          2) -
//                                          24,
//                                      decoration: rightSideDecorations,
                                      child: Row(
                                        children: <Widget>[
                                          SizedBox(width: 4.0),
                                          Image.asset(ImagePath.directionIcon),
                                          SizedBox(width: 8.0),
                                          Text(
                                            'Direction',
                                            style: Styles.normalTextStyle,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    restaurantDetails.restaurantName,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: Sizes.TEXT_SIZE_28,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.headingText,
                                        fontFamily: "Josefin Sans"),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  CardTags(
                                    title: restaurantDetails.category,
                                    decoration: BoxDecoration(
                                        gradient: Gradients.secondaryGradient,
                                        boxShadow: [Shadows.secondaryShadow],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  CardTags(
                                    title: restaurantDetails.distance,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 132, 141, 255),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                    ),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Ratings(restaurantDetails.rating),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                restaurantDetails.restaurantAddress,
                                style: TextStyle(
                                    color: AppColors.accentText,
                                    fontSize: Sizes.TEXT_SIZE_14,
                                    fontFamily: "Josefin Sans",
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: Sizes.TEXT_SIZE_14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Josefin Sans"),
                                  children: [
                                    TextSpan(text: "Open Now "),
                                    TextSpan(
                                        text: "daily time ",
                                        style: TextStyle(
                                            color: AppColors.accentText,
                                            fontSize: Sizes.TEXT_SIZE_14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Josefin Sans")),
                                    TextSpan(text: "9:30 am to 11:30 am "),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SpaceH24(),
                          HeadingRow(
                              title: StringConst.MENU_AND_PHOTOS,
                              number: StringConst.SEE_ALL_32,
                              onTapOfNumber: () {
                                context.router
                                    .push(const MenuPhotosScreenRoute());
                              }),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: menuPhotosImagePaths.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: Image.asset(
                                    menuPhotosImagePaths[index],
                                    fit: BoxFit.cover,
                                    width: 150,
                                  ),
                                );
                              },
                            ),
                          ),
                          SpaceH24(),
                          HeadingRow(
                              title: StringConst.REVIEWS_AND_RATINGS,
                              number: StringConst.SEE_ALL_32,
                              onTapOfNumber: () {
                                context.router
                                    .push(const ReviewRatingScreenRoute());
                              }),
                          SizedBox(
                            height: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: createUserListTiles(numberOdUser: 4),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              PotbellyButton(
                'Rate Your Experience',
                onTap: () {
                  context.router.push(const AddRatingScreenRoute());
                },
                buttonHeight: 65,
                buttonWidth: MediaQuery.of(context).size.width,
                decoration: Decorations.customHalfCurvedButtonDecoration(
                    topleftRadius: Sizes.RADIUS_24,
                    topRightRadius: Sizes.RADIUS_24),
              )
            ],
          ),
        ),
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
    ];

    List<String> userNames = [
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
    ];

    List<String> ratings = [
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
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        subtitle: Text(
          description[i - 1],
          style: TextStyle(
              color: AppColors.accentText, fontSize: Sizes.TEXT_SIZE_14),
        ),
      ));
    });
    return userListTiles;
  }
}
