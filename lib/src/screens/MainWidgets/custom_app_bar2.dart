import 'package:flutter/material.dart';

import 'default_appbar.dart';

class CustomAppBar2 extends StatelessWidget {
  final String? title;
  // final String name;
  // final String location;
  // final bool hasBack;
  // final Function onBack;
  // final Widget image;
  final Widget? icon;

  const CustomAppBar2(
      {Key? key,
      this.title,
      // this.name,
      // this.location,
      // this.hasBack,
      // this.onBack,
      // this.image,
      this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const  BoxDecoration(
          color: Color(0xff91dced),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          defaultAppBar(
            context: context,
            title: title ?? "title",
            elevation: 0.0,
            // hasBack: hasBack ?? false,
            // onPress: onBack ?? () {},
          ),
       const     SizedBox(height: 10),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Column(
          //       children: [
          //         Text(
          //           '1.18',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 30,
          //           ),
          //         ),
          //         Text(
          //           'معدل التحويل',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 15,
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Text(
          //           '17',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 30,
          //           ),
          //         ),
          //         Text(
          //           'الاسماك/طن',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 15,
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Text(
          //           '20',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 30,
          //           ),
          //         ),
          //         Text(
          //           'الاعلاف/طن',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 15,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // Name
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 5),
          //   child: Text(
          //     name,
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 15,
          //     ),
          //   ),
          // ),
          // Location
          // location != null
          //     ? Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 5),
          //         child: Text(
          //           location,
          //           style: TextStyle(
          //             color: Colors.grey,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 13,
          //           ),
          //         ),
          //       )
        
         const   SizedBox(height: 5),
          Container(
            height: 6,
            width: 20,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const  BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
