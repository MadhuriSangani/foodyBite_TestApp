import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/widgets/search_textfield_widget.dart';

import '../routes/router.gr.dart';
import '../values/data.dart';
import '../values/values.dart';
import '../widgets/foodybite_card_widget.dart';
import '../widgets/restaurant_detail.dart';
import '../widgets/search_input_field.dart';

class TrendingRestaurantsScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  TrendingRestaurantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Trending Restaurants",
          style: TextStyle(
              color: Color(0xFF222455),
              fontFamily: "Josefin Sans",
              fontSize: 27),
        ),
        leading: InkWell(
          onTap: () {
            context.router.pop();
          },
          child: Image.asset("assets/images/symbol-5--15.png"),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 650,
          //height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(
            children: [
              Card(
                child: SearchTextFieldWidget(
                  textLabel: "Search",
                  controller: controller,
                  suffixIcon: InkWell(
                    onTap: () => context.router.push(FilterScreenRoute()),
                    child: Image.asset(
                      "assets/images/settings_icon.png",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
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
                              )));
                            },
                            address: addresses[index],
                            category: category[index],
                            distance: distance[index],
                            imagePath: imagePaths[index],
                            cardTitle: restaurantNames[index],
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
