import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/router.gr.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({
    Key? key,
    required this.currentTab,
  }) : super(key: key);

  final int currentTab;

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 8.0,
      shape: const AutomaticNotchedShape(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25), topLeft: Radius.circular(25))),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    context.router.push(HomeScreenRoute());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        widget.currentTab == 0
                            ? Icons.home
                            : Icons.home_outlined,
                        color:
                            widget.currentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                context.router.push(const BookMarkScreenRoute());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.currentTab == 1
                        ? Icons.bookmark
                        : Icons.bookmark_border_outlined,
                    color: widget.currentTab == 1 ? Colors.blue : Colors.grey,
                  ),
                ],
              ),
            ),
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                context.router.push(NotificationScreenRoute());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.currentTab == 2
                        ? Icons.notifications
                        : Icons.notifications_none_outlined,
                    color: widget.currentTab == 2 ? Colors.blue : Colors.grey,
                  ),
                ],
              ),
            ),
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                context.router.push(MyProfileScreenRoute());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.currentTab == 3
                        ? Icons.person
                        : Icons.person_outline,
                    color: widget.currentTab == 3 ? Colors.blue : Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
