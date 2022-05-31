import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/routes/router.gr.dart';
import 'package:foodybite_testapp/values/values.dart';
import 'package:foodybite_testapp/widgets/potbelly_button.dart';

class FindFriendsScreen extends StatelessWidget {
  const FindFriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Find Friends",
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
          actions: [
            InkWell(
              onTap: () {},
              child: Image.asset("assets/images/search_icon_blue.png"),
            ),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Column(
              children: [_buildContacts(context), _buildSuggestions(context)],
            )
          ],
        ));
  }

  Widget _buildContacts(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      child: Column(
        children: [
          Container(
            color: AppColors.secondaryColor,
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.MARGIN_16, vertical: Sizes.MARGIN_16),
            child: Row(
              children: [
                Text(
                  "Contacts",
                  style: textTheme.subtitle1?.copyWith(
                      fontSize: Sizes.TEXT_SIZE_20,
                      color: AppColors.indigoShade1),
                )
              ],
            ),
          ),
          FriendsListTile(
            imageUrl: ImagePath.juliet,
            title: "Natalie",
            subtitle: "50 reviews",
            buttonText: "Follow",
            onTap: () {
              context.router.push(OtherUserProfileScreenRoute());
            },
          ),
          FriendsListTile(
            imageUrl: ImagePath.andy,
            title: "Andy",
            subtitle: "12 reviews",
            buttonText: "Unfollow",
            isFollowing: false,
            onTap: () {},
          ),
          FriendsListTile(
            imageUrl: ImagePath.branson,
            title: "Branson",
            subtitle: "29 reviews",
            buttonText: "Follow",
            onTap: () {},
          ),
          FriendsListTile(
            imageUrl: ImagePath.anabel,
            title: "Juliet",
            subtitle: "34 reviews",
            buttonText: "Unfollow",
            isFollowing: false,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestions(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: AppColors.secondaryColor,
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.MARGIN_16,
              vertical: Sizes.MARGIN_16,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  "Suggestions",
                  style: textTheme.subtitle1?.copyWith(
                    fontSize: Sizes.TEXT_SIZE_20,
                    color: AppColors.indigoShade1,
                  ),
                ),
              ],
            ),
          ),
          FriendsListTile(
            imageUrl: ImagePath.profile1,
            title: "Ryan",
            subtitle: "5 reviews",
            buttonText: "Follow",
            onTap: () {},
          ),
          FriendsListTile(
            imageUrl: ImagePath.profile3,
            title: "John",
            subtitle: "21 reviews",
            buttonText: "Follow",
            onTap: () {},
          ),
          FriendsListTile(
            imageUrl: ImagePath.deven,
            title: "Deven",
            subtitle: "43 reviews",
            buttonText: "Follow",
            onTap: () {},
          ),
          FriendsListTile(
            imageUrl: ImagePath.duke,
            title: "Duke",
            subtitle: "92 reviews",
            buttonText: "Follow",
            onTap: () {},
          ),
          FriendsListTile(
            imageUrl: ImagePath.ashlee,
            title: "Ashlee",
            subtitle: "89 reviews",
            buttonText: "Follow",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class FriendsListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String buttonText;
  final bool isFollowing;
  final GestureTapCallback onTap;

  FriendsListTile(
      {required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      this.isFollowing = true,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return ListTile(
        contentPadding: EdgeInsets.symmetric(
            vertical: Sizes.PADDING_4, horizontal: Sizes.PADDING_16),
        onTap: onTap,
        leading: Image.asset(imageUrl),
        title: Container(
          margin: EdgeInsets.only(bottom: Sizes.MARGIN_8),
          child: Text(
            title,
            style: textTheme.subtitle1?.copyWith(fontSize: Sizes.TEXT_SIZE_20),
          ),
        ),
        subtitle: Text(
          subtitle,
          style: textTheme.subtitle1?.copyWith(
              color: AppColors.accentText, fontSize: Sizes.TEXT_SIZE_16),
        ),
        trailing: isFollowing
            ? PotbellyButton(
                buttonText,
                onTap: () {},
                buttonWidth: 100,
                buttonHeight: 36,
              )
            : PotbellyButton(
                buttonText,
                onTap: () {},
                buttonHeight: 36,
                buttonWidth: 100,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  border: Border.all(color: AppColors.indigo),
                  borderRadius: BorderRadius.all(
                    Radius.circular(Sizes.RADIUS_8),
                  ),
                ),
                buttonTextStyle: textTheme.button!.copyWith(
                    color: AppColors.accentText, fontSize: Sizes.TEXT_SIZE_16),
              ));
  }
}
