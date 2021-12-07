import 'package:aquameter/src/screens/MainWidgets/circleChart.dart';
import 'package:aquameter/src/screens/MainWidgets/custom_btn.dart';
import 'package:aquameter/src/screens/MainWidgets/profile_appbar.dart';
import 'package:flutter/material.dart';
import 'package:aquameter/src/Helper/mediaQuery.dart';

import 'MainWidgets/default_appbar.dart';

class BudgetUi extends StatelessWidget {
  const BudgetUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        defaultAppBar(
          context: context,
          title: 'الميزانيه',
          elevation: 0,
        ),
        Padding(
          padding: EdgeInsets.only(
              top: context.height * .02, right: context.width * .05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: const [
                    Text(
                      'الرصيد الابتدائى',
                    ),
                    Text(
                      '4.055',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' المصاريف',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Text(
                      '9054',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    Text(
                      'اجمالي الدخل ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Text(
                      '17.050',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    Text(
                      'الديون المدفوعه ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Text(
                      '575.0',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    Text(
                      'الديون المستلمه ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Text(
                      '0755',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                  ],
                ),
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Container(
                  width: context.width * .6,
                  child: Column(
                    children: [
                      const Text(
                        'الرصيد النهائى',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        '10550',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                      SizedBox(
                        height: context.height * .04,
                      ),
                      const CircleChart(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: context.height * .04,
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 2,
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: DateTime(2021),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2030))
                    .then((pickedDate) {
                  if (pickedDate == null) {
                    //if user tap cancel then this function will stop
                    return;
                  }
                });
              },
              child: const Text(
                'من',
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
            const Text(':'),
            TextButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030))
                    .then((pickedDate) {
                  if (pickedDate == null) {
                    //if user tap cancel then this function will stop
                    return;
                  }
                });
              },
              child: const Text(
                'الي',
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ],
        ),
        SizedBox(
          height: context.height * .04,
        ),
        CustomBtn(
          text: "تحميل التقرير",
          onTap: () {},
          color: Colors.amber,
          weigh: context.width * .5,
        )
      ],
    );
  }
}
