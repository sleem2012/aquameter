import 'package:aquameter/src/provider/departments.dart';
import 'package:aquameter/src/screens/page2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:provider/provider.dart';
import 'MainWidgets/custom_appbar1.dart';

import 'MainWidgets/custom_slider.dart';
import 'MainWidgets/transaction.dart';
import 'days_item.dart';
import 'edit_profile.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final List<Transaction> _userTransactions = [];

  List<Transaction> get _recentTransactions {
    return _userTransactions.where((tx) {
      return tx.date.isAfter(
        DateTime.now().subtract(
          const Duration(days: 7),
        ),
      );
    }).toList();
  }

  DepartMentProvider? departMentProvider;
  List<Object> name = ['الحاج محمود مصطفي محمد', 'مهندس محمد طارق عباس'];
  List<Object> address = ['كفرالشيخ - طريق بلطيم', 'بورسعيد - مثلث الديبه'];

  @override
  Widget build(BuildContext context) {
    departMentProvider =
        Provider.of<DepartMentProvider>(context, listen: false);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xffe5e5e5),
        body: ListView(
          primary: false,
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: const CustomAppBar1(),
                ),
                Positioned(
                  bottom: -10,
                  right: 17,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        children: [
                          const Text(
                            'خطتك هذا الاسبوع',
                            style: TextStyle(
                              color: Color(0xff282759),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                                physics: const ClampingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                primary: false,
                                child: DaysItem(_recentTransactions)),
                          ),
                          Consumer<DepartMentProvider>(
                              builder: (context, snap, _) {
                            if (snap.day == null) {
                              return Text('${intl.DateFormat.EEEE(
                                'ar',
                              ).format(DateTime.now()).toString()}\t${DateTime.now().toString().substring(6, 7)}/${DateTime.now().toString().substring(8, 10)}');
                            } else {
                              return Text(
                                  '${snap.name}\t${snap.month}/${snap.day}');
                            }
                          }),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: const EdgeInsets.only(
                left: 13,
                right: 19,
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: name.length,
                      itemBuilder: (context, i) => CustomSlider(
                        6,
                        name[i] as String?,
                        address[i] as String?,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const Page2()));
                        },
                        child: const Text('اضافه عميل'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
