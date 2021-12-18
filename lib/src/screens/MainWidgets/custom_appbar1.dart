// import 'package:aquafish/src/screens/MainWidgets/register_text_field.dart';
import 'package:flutter/material.dart';
import 'package:aquameter/src/Helper/helper_method.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

import '../page2.dart';
// import 'defaultAppbar.dart';

class CustomAppBar1 extends StatelessWidget {
  final String? title;
  // final String name;
  // final String location;
  // final bool hasBack;
  // final Function onBack;
  // final Widget image;
  final Widget? icon;

  const CustomAppBar1(
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
      decoration: const BoxDecoration(
        color: Color(0xff91dced),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Page2(),
                    ),
                  );
                },
              ),
              Image.asset(
                'assets/images/aqualogo.png',
                fit: BoxFit.fill,
                height: context.height * .06,
                width: context.width * .25,
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text(
                      '1.18',
                      style: TextStyle(
                        color: Color(0xff282759),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'معدل التحويل',
                      style: TextStyle(
                        color: Color(0xff282759),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '17',
                      style: TextStyle(
                        color: Color(0xff282759),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'الاسماك/طن',
                      style: TextStyle(
                        color: Color(0xff282759),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '20',
                      style: TextStyle(
                        color: Color(0xff282759),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'الاعلاف/طن',
                      style: TextStyle(
                        color: Color(0xff282759),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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

          const SizedBox(height: 5),
          Container(
            height: 6,
            width: 20,
            decoration: const BoxDecoration(
              color: Color(0xff91dced),
              borderRadius: BorderRadius.only(
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
