
// ignore_for_file: file_names

import 'package:aquameter/src/provider/departments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'MainWidgets/transaction.dart';

class DaysItem extends StatefulWidget {
  final List<Transaction> recentTransactions;
   const DaysItem(this.recentTransactions, {Key? key}) : super(key: key);

  @override
  _DaysItemState createState() => _DaysItemState();
}

class _DaysItemState extends State<DaysItem> {
  String? name;
  String? day;
  String? month;
  bool intilSelected = true;
  int? dayId;
  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().add(
        Duration(days: index),
      );

      for (var i = 0; i < widget.recentTransactions.length; i++) {
        if (widget.recentTransactions[i].date.day == weekDay.day &&
            widget.recentTransactions[i].date.month == weekDay.month &&
            widget.recentTransactions[i].date.year == weekDay.year) {}
      }

      return {
        'month': weekDay.toString().substring(6, 7),
        'day': weekDay.toString().substring(8, 10),
        'name': DateFormat.EEEE(
          'ar',
        ).format(weekDay).toString(),
        'id': index,
      };
    }).toList();
  }

  late DepartMentProvider departMentProvider;
  bool isInit = true;

  @override
  void didChangeDependencies() async {
    if (isInit) {
      await Provider.of<DepartMentProvider>(context, listen: false)
          .assigndepartMent(groupedTransactionValues);
      departMentProvider =
          Provider.of<DepartMentProvider>(context, listen: false);
      departMentProvider.departments[0].selected = true;
      // Add Your Code here.
      setState(() {
        isInit = false;
      });
    }
    
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return isInit
        ? Center(
            child: SpinKitFadingCircle(
              size: 30,
              color: Theme.of(context).primaryColor,
            ),
          )
        : ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            primary: false,
            shrinkWrap: true,
            itemCount: groupedTransactionValues.length,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                delay: const Duration(milliseconds: 400),
                child: SlideAnimation(
                  duration: const Duration(milliseconds: 400),
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                      child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor:
                            departMentProvider.departments[index].selected
                                ? Colors.red
                                : Colors.grey[400],
                        child: Text(
                          groupedTransactionValues[index]['day'] as String,
                          style: TextStyle(
                            color:
                                departMentProvider.departments[index].selected
                                    ? Colors.white
                                    : Colors.black45,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      for (int i = 0;
                          i < departMentProvider.departments.length;
                          i++) {
                        if (i == index) {
                          setState(() {
                            departMentProvider.departments[i].selected = true;
                          });
                          name = groupedTransactionValues[i]['name'] as String?;
                   
                          day = groupedTransactionValues[i]['day'] as String?;
                          month = groupedTransactionValues[i]['month'] as String?;
                          dayId = departMentProvider.departments[i].id;
                          departMentProvider.changeDate(
                              dayNum: day, monthNum: month, nameofDay: name);
                        } else {
                          setState(() {
                            departMentProvider.departments[i].selected = false;
                          });
                        }
                      }
                    },
                  )),
                ),
              );
            });
  }
}
