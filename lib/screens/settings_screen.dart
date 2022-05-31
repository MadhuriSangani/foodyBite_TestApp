import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/values/values.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          " Settings",
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
      ),
      body: Column(
        children: [
          _buildAccountSettings(context: context),
          _buildOtherSettings(context: context)
        ],
      ),
    );
  }

  Widget _buildAccountSettings({required BuildContext context}) {
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
                  "Account",
                  style: textTheme.subtitle1?.copyWith(
                      color: AppColors.indigoShade1,
                      fontSize: Sizes.TEXT_SIZE_20),
                )
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              ...ListTile.divideTiles(
                context: context,
                tiles: [
                  SettingsListTile(
                    title: "Change Password",
                    onTap: () {},
                  ),
                  SettingsListTile(
                    title: "Change Language",
                    onTap: () {},
                  ),
                ],
              ).toList(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildOtherSettings({required BuildContext context}) {
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
                  "Others",
                  style: textTheme.subtitle1?.copyWith(
                      color: AppColors.indigoShade1,
                      fontSize: Sizes.TEXT_SIZE_20),
                )
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              ...ListTile.divideTiles(
                context: context,
                tiles: [
                  SettingsListTile(title: "Privacy Policy", onTap: () {}),
                  SettingsListTile(title: "Terms & Conditions", onTap: () {}),
                  SettingsListTile(
                      title: "Logout",
                      titleColor: AppColors.secondaryElement,
                      hasTrailing: false,
                      onTap: () {}),
                ],
              ).toList(),
            ],
          )
        ],
      ),
    );
  }
}

class SettingsListTile extends StatelessWidget {
  final String title;
  final Color titleColor;
  final IconData iconData;
  final GestureTapCallback onTap;
  final bool hasTrailing;

  SettingsListTile(
      {required this.title,
      this.titleColor = AppColors.primaryText,
      this.iconData = Icons.arrow_forward_ios,
      required this.onTap,
      this.hasTrailing = true});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
            horizontal: Sizes.PADDING_16, vertical: Sizes.PADDING_4),
        title: Container(
          margin: EdgeInsets.only(bottom: Sizes.MARGIN_8),
          child: Text(
            title,
            style: textTheme.subtitle1
                ?.copyWith(fontSize: Sizes.TEXT_SIZE_20, color: titleColor),
          ),
        ),
        trailing: hasTrailing
            ? Icon(
                iconData,
                color: AppColors.indigo,
              )
            : null,
      ),
    );
  }
}

class AlertDialogButton extends StatelessWidget {
  final TextStyle textStyle;
  final String buttonText;
  final Border border;
  final VoidCallback onPressed;
  final double width;

  AlertDialogButton(
      {required this.textStyle,
      required this.buttonText,
      required this.border,
      required this.onPressed,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: border,
      ),
      child: CupertinoButton(
        child: Text(
          buttonText,
          style: textStyle,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
