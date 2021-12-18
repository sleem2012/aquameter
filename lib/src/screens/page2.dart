import 'package:aquameter/src/screens/MainWidgets/members.dart';
import 'package:flutter/material.dart';
import 'MainWidgets/custom_appbar1.dart';
import '../Helper/helper_method.dart';
import 'MainWidgets/custom_slider.dart';
import 'edit_profile.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          
          backgroundColor: const Color(0xffe5e5e5),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const EditProfile()));
            },
            child: const Icon(
              Icons.add,
              size: 40,
            ),
            backgroundColor: const Color(0xff91dced),
          ),
          body: SingleChildScrollView(
            child: Column(
              
              children: [
                const CustomAppBar1(),
                Members()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
