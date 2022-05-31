import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/routes/router.gr.dart';
import 'package:foodybite_testapp/values/data.dart';
import 'package:foodybite_testapp/values/values.dart';

import '../widgets/foodybite_card_widget.dart';
import '../widgets/foodybite_caregory_card_widget.dart';
import '../widgets/heading_row_widget.dart';
import '../widgets/restaurant_detail.dart';
import '../widgets/search_textfield_widget.dart';

class HomeScreen extends StatelessWidget {
  static const int TAB_NO = 0;
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
          height: 670,
          child: Column(
            children: [
              Card(
                child: SearchTextFieldWidget(
                  textLabel: "Find Restaurants",
                  controller: controller,
                  suffixIcon: InkWell(
                    onTap: () => context.router.push(FilterScreenRoute()),
                    child: Image.asset(
                      "assets/images/settings_icon.png",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              HeadingRow(
                title: "Trending Restaurants",
                number: "See all (45)",
                onTapOfNumber: () {
                  context.router.push(TrendingRestaurantsScreenRoute());
                },
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(2),
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
                            address: addresses[index],
                            category: category[index],
                            distance: distance[index],
                            imagePath: imagePaths[index],
                            cardTitle: restaurantNames[index],
                          ),
                        );
                      })),
              SizedBox(
                height: 20,
              ),
              HeadingRow(
                title: "Category",
                number: "See all (9)",
                onTapOfNumber: () {
                  context.router.push(const CategoryScreenRoute());
                },
              ),
              const SizedBox(height: 20),
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryListImagePaths.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 14.0),
                        child: FoodyBiteCategoryCard(
                          onTap: () {
                            context.router.push(CategoryDetailScreenRoute(
                              categoryName: category[index],
                              imagePath: categoryListImagePaths[index],
                              selectedCategory: index,
                              numberOfCategories: categoryListImagePaths.length,
                              gradient: gradients[index],
                            ));
                          },
                          category: category[index],
                          imagePath: categoryListImagePaths[index],
                          gradient: gradients[index],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              HeadingRow(
                  title: "Friends",
                  number: "See all (56)",
                  onTapOfNumber: () {
                    context.router.push(const FindFriendsScreenRoute());
                  }),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // ListView.builder(itemBuilder: (context, index) {
                    //   return CreateUserProfilePhotos();
                    // }),
                    CreateUserProfilePhotos(),
                    CircleAvatar(
                      child: Image.asset(
                        "assets/images/andy.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    CircleAvatar(
                      child: Image.asset(
                        "assets/images/branson.png",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    CircleAvatar(
                      child: Image.asset(
                        "assets/images/deven.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    CircleAvatar(
                      child: Image.asset(
                        "assets/images/ashlee.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    CircleAvatar(
                      //foregroundImage: AssetImage("assets/images/anabel.png"),
                      child: Image.asset(
                        "assets/images/duke.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CreateUserProfilePhotos extends StatelessWidget {
  CreateUserProfilePhotos({
    Key? key,
  }) : super(key: key);
  final List<String> userPhotoList = [
    ImagePath.profile1,
    ImagePath.profile2,
    ImagePath.profile3,
    ImagePath.profile4,
  ];
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Image.asset(
        "assets/images/anabel.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
