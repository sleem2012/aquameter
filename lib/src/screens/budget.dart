import 'package:aquameter/src/screens/MainWidgets/circleChart.dart';
import 'package:flutter/material.dart';
import 'package:aquameter/src/Helper/mediaQuery.dart';

class BudgetUi extends StatelessWidget {
  const BudgetUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
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
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
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
                  CircleChart(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
