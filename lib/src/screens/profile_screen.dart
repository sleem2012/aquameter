
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:table_calendar/table_calendar.dart';

import 'MainWidgets/chart.dart';
import 'MainWidgets/custtom_bottom_sheet.dart';

import 'edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Map<String, dynamic>> listofMeasuer = [
    {'name': 'معدل الملوحه', 'id': 1},
    {'name': 'معدلات الامونيا', 'id': 2},
  ];
  String? selctedMeasuer;
 
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const  EditProfile()));
                },
                child: const  Text(
                  "الحاج محمود مصطفى محمد",
                )),
            actions: [
              IconButton(
                icon: const  Icon(Icons.edit),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const EditProfile()));
                },
              )
            ],
          ),
          body: ListView(
            primary: false,
            shrinkWrap: true,
            //scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                height: 20,
              ),
              TableCalendar(
                
              
                availableGestures: AvailableGestures.horizontalSwipe, firstDay:DateTime.now(), focusedDay: DateTime.now(), lastDay: DateTime.now(),
              ),
              const SizedBox(
                height: 20,
              ),
              // Container(
              //   height: 50,
              //   width: 50,
              //   margin: EdgeInsets.all(20),
              //   child: CustomBtn(
              //       text: "الرسم التوضيحى لمعدل الملوحة",
              //       heigh: 50,
              //       weigh: 50,
              //       txtColor: Colors.white,
              //       onTap: () {
              //         Navigator.of(context).push(MaterialPageRoute(
              //             builder: (_) =>
              //                 DateTimeComboLinePointChart.withSampleData()));
              //       },
              //       color: Colors.blue),
              // )
              //
              //

              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: const EdgeInsets.only(right: 1, left: 1),
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    border: Border.all(width: 1, color: Colors.black38),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: () {
                            CustomBottomSheet().show(
                                context: context,
                                child: ListView.builder(
                                    itemCount: listofMeasuer.length,
                                    itemBuilder: (context, i) {
                                      return Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                selctedMeasuer =
                                                    listofMeasuer[i]['name'];
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            child: Center(
                                              child: Text(
                                                listofMeasuer[i]['name'],
                                                style: const  TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                      const      Divider(),
                                        ],
                                      );
                                    }));
                          },
                          child: CircleAvatar(
                            radius: 25,
                            child: const  Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 25,
                              color: Colors.white,
                            ),
                            backgroundColor: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Text(selctedMeasuer != null
                          ? selctedMeasuer!
                          : 'معدلات الامونيا'),
                    ],
                  ),
                ),
              ),
              Directionality(
                  textDirection: TextDirection.ltr,
                  child: DateTimeComboLinePointChart.withSampleData())
            ],
          )),
    );
  }
}
