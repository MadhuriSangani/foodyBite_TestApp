import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/routes/router.gr.dart';
import 'package:foodybite_testapp/screens/category_detail_screen.dart';
import 'package:foodybite_testapp/widgets/foodybite_card_widget.dart';
import 'package:foodybite_testapp/widgets/spaces.dart';

import '../values/data.dart';
import '../values/values.dart';
import '../widgets/foodybite_caregory_card_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Category",
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
        iconTheme: IconThemeData(color: Color(0xFF222455)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset("assets/images/search_icon_blue.png"),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: Sizes.MARGIN_16,
        ),
        padding: const EdgeInsets.only(top: 25),
        child: ListView.separated(
          itemCount: categoryListImagePaths.length,
          itemBuilder: (context, index) {
            return Container(
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
                hasHandle: true,
                width: MediaQuery.of(context).size.width,
                category: category[index],
                imagePath: categoryListImagePaths[index],
                gradient: gradients[index],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SpaceH12();
          },
        ),
      ),
    );
  }
}
