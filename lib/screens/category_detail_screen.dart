import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/values/data.dart';
import 'package:foodybite_testapp/values/values.dart';
import 'package:foodybite_testapp/widgets/foodybite_card_widget.dart';
import 'package:foodybite_testapp/widgets/foodybite_caregory_card_widget.dart';
import 'package:foodybite_testapp/widgets/spaces.dart';

class CategoryDetailScreen extends StatelessWidget {
  final String categoryName;
  final int numberOfCategories;
  final int selectedCategory;
  final String imagePath;
  final Gradient gradient;
  const CategoryDetailScreen(
      {required this.categoryName,
      required this.numberOfCategories,
      required this.selectedCategory,
      required this.imagePath,
      required this.gradient});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var widthOfScreen = MediaQuery.of(context).size.width;
    var marginBetweenPills = 4;
    var marginAroundPills = 92;
    var margin =
        marginAroundPills + ((numberOfCategories - 1) * marginBetweenPills);
    var widthOfEachPill = (widthOfScreen - margin) / numberOfCategories;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  imagePath,
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: Opacity(
                  opacity: 0.85,
                  child: Container(
                    decoration: BoxDecoration(gradient: gradient),
                  ),
                ),
              ),
              Positioned(
                child: SafeArea(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 16, top: 16, right: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                context.router.pop();
                              },
                              child: Image.asset(ImagePath.arrowBackIcon),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              categoryName,
                              style: textTheme.bodyText1?.copyWith(
                                  fontSize: Sizes.TEXT_SIZE_22,
                                  color: AppColors.white),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                        SpaceH24(),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: generatePills(
                                numberOfPills: numberOfCategories,
                                widthOfPill: widthOfEachPill),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
            left: Sizes.MARGIN_16,
            right: Sizes.MARGIN_16,
            top: Sizes.MARGIN_16),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SpaceH8();
                },
                itemCount: categoryDetailImagePaths.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 4),
                    child: FoodyBiteCard(
                      imagePath: categoryDetailImagePaths[index],
                      status: status[index],
                      cardTitle: restaurantNames[index],
                      rating: ratings[index],
                      category: category[index],
                      distance: distance[index],
                      address: addresses[index],
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> generatePills({
    required int numberOfPills,
    required double widthOfPill,
  }) {
    List<Widget> pills = [];
    for (var index = 0; index < numberOfPills; index++) {
      pills.add(
        Pill(
          width: widthOfPill,
          color: (index == selectedCategory)
              ? AppColors.white
              : AppColors.whiteShade_50,
          marginRight:
              (index == numberOfPills - 1) ? Sizes.MARGIN_0 : Sizes.MARGIN_4,
        ),
      );
    }

    return pills;
  }
}

class Pill extends StatelessWidget {
  Pill({
    this.width = 30,
    this.height = 4,
    this.marginRight = 4,
    this.color = AppColors.whiteShade_50,
    this.borderRadius = Sizes.RADIUS_30,
  });

  final double width;
  final double height;
  final double marginRight;
  final Color color;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, //28,
      height: height,
      margin: EdgeInsets.only(right: marginRight),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );
  }
}