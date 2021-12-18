import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import '../../Helper/helper_method.dart';
import 'custom_slider.dart';

class Members extends StatefulWidget {
  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  ScrollController _scrollController=ScrollController();

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
    return Center(
      child: Container(

        padding: EdgeInsets.only(top: context.height * .02),
        width: context.width * .9,
        child: Card(
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Accordion(
                rightIcon: Icon(Icons.expand_more),
                headerPadding: EdgeInsets.all(context.height * .02),
                headerBackgroundColor: const Color(0xffCDE8EE),
                children: [
                  AccordionSection(

                    header: const Text(
                      'كفرالشيخ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    content: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: 7,
                      physics: BouncingScrollPhysics(),
                      controller: _scrollController,

                      itemBuilder: (context, index) => CustomSlider(
                        6,
                        list[index]['name'],
                        list[index]['address'],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
