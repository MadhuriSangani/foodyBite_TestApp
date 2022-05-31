import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/router.gr.dart';
import '../values/data.dart';
import '../values/values.dart';
import '../widgets/foodybite_card_widget.dart';
import '../widgets/restaurant_detail.dart';
import '../widgets/spaces.dart';

class BookMarkScreen extends StatelessWidget {
  static const int TAB_NO = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'My Favourite',
          style: Styles.customTitleTextStyle(
            color: AppColors.headingText,
            fontWeight: FontWeight.w600,
            fontSize: Sizes.TEXT_SIZE_22,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: Sizes.MARGIN_16),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                ImagePath.searchIconBlue,
                color: AppColors.headingText,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          margin: EdgeInsets.only(
            left: Sizes.MARGIN_16,
            right: Sizes.MARGIN_16,
            top: Sizes.MARGIN_16,
          ),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: 4,
            separatorBuilder: (context, index) {
              return SpaceH8();
            },
            itemBuilder: (context, index) {
              return Container(
                child: FoodyBiteCard(
                  onTap: () {
                    context.router.push(RestaurantDetailScreenRoute(
                      restaurantDetails: RestaurantDetails(
                        imagePath: imagePaths[index],
                        restaurantName: restaurantNames[index],
                        restaurantAddress: addresses[index],
                        rating: ratings[index],
                        category: category[index],
                        distance: distance[index],
                      ),
                    ));
                  },
                  imagePath: imagePaths[index],
                  status: status[index],
                  cardTitle: restaurantNames[index],
                  rating: ratings[index],
                  bookmark: true,
                  category: category[index],
                  distance: distance[index],
                  address: addresses[index],
                ),
              );
            },
          )),
    );
  }
}
