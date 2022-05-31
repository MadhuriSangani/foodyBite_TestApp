import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/routes/router.gr.dart';
import 'package:foodybite_testapp/widgets/foodybite_card_widget.dart';
import 'package:foodybite_testapp/widgets/restaurant_detail.dart';
import 'package:foodybite_testapp/widgets/search_input_field.dart';
import 'package:foodybite_testapp/widgets/spaces.dart';

import '../values/data.dart';
import '../values/values.dart';

class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
              top: Sizes.MARGIN_16,
              right: Sizes.MARGIN_16,
              left: Sizes.MARGIN_16),
          child: Column(
            children: [
              FoodyBiteSearchInputField(
                controller: controller,
                onTapOfSuffixIcon: () => Navigator.pop(context),
                onTapOfLeadingIcon: () {},
                hintText: StringConst.HINT_TEXT_TRENDING_SEARCH_BAR,
                borderWidth: 0.0,
                textFormFieldStyle:
                    Styles.customNormalTextStyle(color: AppColors.accentText),
                hintTextStyle:
                    Styles.customNormalTextStyle(color: AppColors.accentText),
                borderStyle: BorderStyle.solid,
                suffixIcon: Image.asset("assets/images/search_icon.png"),
                prefixIcon: Image.asset("assets/images/close_icon.png"),
              ),
              SizedBox(
                height: Sizes.WIDTH_16,
              ),
              Expanded(
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
                          context.router.push(
                            RestaurantDetailScreenRoute(
                              restaurantDetails: RestaurantDetails(
                                distance: distance[index],
                                imagePath: imagePaths[index],
                                restaurantName: restaurantNames[index],
                                rating: ratings[index],
                                restaurantAddress: addresses[index],
                                category: category[index],
                              ),
                            ),
                          );
                        },
                        distance: distance[index],
                        imagePath: imagePaths[index],
                        cardTitle: restaurantNames[index],
                        category: category[index],
                        address: addresses[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
