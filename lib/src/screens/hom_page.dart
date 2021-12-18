import 'package:aquameter/src/screens/budget.dart';
import 'package:aquameter/src/screens/page1.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'edit_profile.dart';

class HomePageUi extends StatefulWidget {
  const HomePageUi({key}) : super(key: key);

  @override
  _HomePageUiState createState() => _HomePageUiState();
}

class _HomePageUiState extends State<HomePageUi> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> items = ['الرئيسيه', 'الميزانيه', 'اضافة', 'المحفظات', 'المزيد'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            _currentIndex = 1;
          });
        },
      ),
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      // appBar: AppBar(
      //   titleSpacing: 00.0,
      //   title: Padding(
      //     padding: const EdgeInsets.only(right: 15),
      //     child: Text(
      //       items[_currentIndex].toString(),
      //       style: const TextStyle(
      //           fontSize: 15.0,
      //           color: Colors.white,
      //           fontWeight: FontWeight.bold),
      //     ),
      //   ),
      //   elevation: 0.0,
      //   backgroundColor: Colors.green,
      // ),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Expanded(child: getCurrentIndex(_currentIndex)),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.greenAccent,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          iconSize: 30,
          onTap: (index) {
            setState(() {
              if (index != 1) {
                _currentIndex = index;
              }

              // print('${index}index');
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: 'الرئيسية',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
                icon: SizedBox(
                  width: 0.0,
                ),
                label: ''),
            BottomNavigationBarItem(
              label: 'الميزانيه',
              icon: Icon(
                Icons.money,
              ),
            ),
          ]),
    ));
  }

  Widget getCurrentIndex(int index) {
    if (index == 2) {
      return const BudgetUi();
    } else if (index == 1) {
      return const EditProfile();
    } else if (index == 0) {
      return const Page1();
    } else {
      return const Page1();
    }
  }
}
