import 'package:flutter/material.dart';
import 'MainWidgets/custom_appbar1.dart';

import 'MainWidgets/custom_slider.dart';
import 'edit_profile.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Object> name = [
    'الحاج محمود مصطفي محمد',
    'مهندس محمد طارق عباس',
    'متولي زكريا القاضي',
    'الحاج محمود مصطفي محمد',
    'مهندس محمد طارق عباس',
    'متولي زكريا القاضي',
    'متولي زكريا القاضي',
  ];
  List<Object> address = [
    'كفرالشيخ - طريق بلطيم الدولي ',
    'بورسعيد - مثلث الديبه',
    'كفرالشيخ - طريق بلطيم الدولي ',
    'بورسعيد - مثلث الديبه',
    'كفرالشيخ - طريق بلطيم الدولي ',
    'بورسعيد - مثلث الديبه',
    'كفرالشيخ - طريق بلطيم الدولي ',
  ];
  List<Map<String, dynamic>> list = [
    {
      "name": 'الحاج محمود مصطفي محمد',
      "address": 'كفرالشيخ - طريق بلطيم الدولي ',
    },
    {
      "name": 'مهندس محمد طارق عباس',
      "address": 'بورسعيد - مثلث الديبه',
    },
    {
      "name": 'الحاج محمود مصطفي محمد',
      "address": 'كفرالشيخ - طريق بلطيم الدولي',
    },
    {
      "name": 'مهندس محمد طارق عباس',
      "address": 'بورسعيد - مثلث الديبه',
    },
    {
      "name": 'الحاج محمود مصطفي محمد',
      "address": 'كفرالشيخ - طريق بلطيم الدولي',
    },
    {
      "name": 'مهندس محمد طارق عباس',
      "address": 'بورسعيد - مثلث الديبه',
    },
    {
      "name": 'الحاج محمود مصطفي محمد',
      "address": 'كفرالشيخ - طريق بلطيم الدولي',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xffe5e5e5),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) =>  const EditProfile()));
          },
          child: const Icon(
            Icons.add,
            size: 40,
          ),
          backgroundColor: const Color(0xff91dced),
        ),
        body: ListView(
          primary: false,
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .2),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width * .9,
                      child: Card(
                        margin: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('كفرالشيخ'),
                                  Text('6'),
                                ]),
                            const SizedBox(height: 10),
                            ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: 7,
                              itemBuilder: (context, index) => CustomSlider(
                                6,
                                list[index]['name'],
                                list[index]['address'],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const CustomAppBar1(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
