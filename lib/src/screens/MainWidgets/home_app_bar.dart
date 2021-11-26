
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const  BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const  <Widget>[
            // IconButton(
            //   onPressed: () {
            //     Navigator.of(context).push<void>(CreateSettingRoute()
            //         .createSettingsRoute(NotificationPage()));
            //   },
            //   icon: Icon(
            //     Icons.notifications,
            //     color: Colors.white,
            //   ),
            // ),
            // Text(
            //   "الرئيسية",
            //   style: TextStyle(color: Colors.white, fontSize: 24),
            // ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     FontAwesomeIcons.cartArrowDown,
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
