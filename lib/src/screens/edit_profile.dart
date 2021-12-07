import 'package:aquameter/src/provider/location.dart';
import 'package:aquameter/src/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'MainWidgets/custom_btn.dart';
import 'MainWidgets/custtom_bottom_sheet.dart';
import 'MainWidgets/profile_appbar.dart';
import 'MainWidgets/register_text_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  int index = 1;
  List<Map<String, dynamic>> listofObject = [
    {'name': 'الغربيه', 'id': 1},
    {'name': 'المنوفية', 'id': 2},
    {'name': 'البحيرة', 'id': 3},
    {'name': 'الاسكندرية', 'id': 4},
    {'name': 'القاهرة', 'id': 5},
    {'name': 'الاسماعيلية', 'id': 6},
    {'name': 'أسيوط', 'id': 7},
    {'name': 'الاقصر', 'id': 8},
    {'name': 'بنى سويف', 'id': 9},
    {'name': 'بورسعيد', 'id': 10},
    {'name': 'دمياط', 'id': 11},
    {'name': 'سوهاج', 'id': 12},
  ];

  List<Map<String, dynamic>> listofMeasuer = [
    {'name': 'فدان', 'id': 1},
    {'name': 'م2', 'id': 2},
  ];
  List<Map<String, dynamic>> listofTypes = [
    {'name': 'بورى', 'id': 1},
    {'name': 'بلطى', 'id': 2},
    {'name': 'جمبرى', 'id': 3}
  ];
  bool location = false;
  String? selctedLabel;
  String? selctedLabel2;
  String? selctedMeasuer;
  String? selctedType;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        //  mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jfif'),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Stack(alignment: AlignmentDirectional.topCenter, children: [
              const ProfileAppBar(),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: ListView(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/aqualogo.png',
                          height: 100,
                          width: 120,
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(30),
                          child: Column(
                            children: <Widget>[
                              CustomBtn(
                                text: "إضافة عميل جديد",
                                color: Colors.white,
                                heigh: 30,
                                weigh: 150,
                                txtColor: Colors.black,
                                onTap: () {},
                              ),
                              const SizedBox(height: 15),
                              CustomBtn(
                                text: "بيانات العميل",
                                color: Colors.blue[400],
                                heigh: 30,
                                weigh: 100,
                                txtColor: Colors.white,
                                onTap: () {},
                              ),
                              const SizedBox(height: 15),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Column(
                                  children: const [
                                    SizedBox(
                                      height: 35,
                                      child: RegisterTextField(
                                        icon: Icons.person,
                                        label: "اسم العميل",
                                        type: TextInputType.text,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              const SizedBox(
                                height: 35,
                                child: RegisterTextField(
                                  hint: 'رقم الموبايل',
                                  icon: Icons.phone,
                                  type: TextInputType.phone,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 35,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    decoration: BoxDecoration(
                                      //color: Colors.white,
                                      border: Border.all(
                                          width: 1, color: Colors.black38),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(selctedLabel2 != null
                                            ? selctedLabel2!
                                            : 'المنطقه'),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: InkWell(
                                            onTap: () {
                                              CustomBottomSheet().show(
                                                  context: context,
                                                  child: ListView.builder(
                                                      itemCount:
                                                          listofObject.length,
                                                      itemBuilder:
                                                          (context, i) {
                                                        return Column(
                                                          children: [
                                                            InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  selctedLabel2 =
                                                                      listofObject[
                                                                              i]
                                                                          [
                                                                          'name'];
                                                                });
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              child: Center(
                                                                child: Text(
                                                                    listofObject[
                                                                            i][
                                                                        'name']),
                                                              ),
                                                            ),
                                                            const Divider(),
                                                          ],
                                                        );
                                                      }));
                                            },
                                            child: CircleAvatar(
                                              radius: 11,
                                              child: const Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                size: 20,
                                                color: Colors.white,
                                              ),
                                              backgroundColor: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    decoration: BoxDecoration(
                                      //color: Colors.white,
                                      border: Border.all(
                                          width: 1, color: Colors.black38),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(selctedLabel != null
                                            ? selctedLabel!
                                            : 'المحافظه'),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: InkWell(
                                            onTap: () {
                                              CustomBottomSheet().show(
                                                  context: context,
                                                  child: ListView.builder(
                                                      itemCount:
                                                          listofObject.length,
                                                      itemBuilder:
                                                          (context, i) {
                                                        return Column(
                                                          children: [
                                                            InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  selctedLabel =
                                                                      listofObject[
                                                                              i]
                                                                          [
                                                                          'name'];
                                                                });
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              child: Center(
                                                                child: Text(
                                                                  listofObject[
                                                                          i]
                                                                      ['name'],
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                              ),
                                                            ),
                                                            const Divider(),
                                                          ],
                                                        );
                                                      }));
                                            },
                                            child: CircleAvatar(
                                              radius: 11,
                                              child: const Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                size: 20,
                                                color: Colors.white,
                                              ),
                                              backgroundColor: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black38),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(Provider.of<LocationProvider>(
                                                      context,
                                                      listen: false)
                                                  .address !=
                                              null
                                          ? Provider.of<LocationProvider>(
                                                  context,
                                                  listen: false)
                                              .address!
                                          : 'العنوان'),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          radius: 12,
                                          child: const Icon(
                                            Icons.location_on,
                                            size: 17,
                                            color: Colors.white,
                                          ),
                                          backgroundColor:
                                              Theme.of(context).primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              CustomBtn(
                                text: "بيانات المزرعة",
                                color: Colors.blue[400],
                                heigh: 30,
                                weigh: 130,
                                txtColor: Colors.white,
                                onTap: () {},
                              ),
                              const SizedBox(height: 10),
                              LimitedBox(
                                maxHeight: 300,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: index,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SizedBox(
                                                  height: 35,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.4,
                                                  child:
                                                      const RegisterTextField(
                                                    hint: 'مساحة الأرض',
                                                  ),
                                                ),
                                                Container(
                                                  height: 35,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 1, left: 1),
                                                  decoration: BoxDecoration(
                                                    //color: Colors.white,
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.black38),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      Radius.circular(100),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
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
                                                                            onTap:
                                                                                () {
                                                                              setState(() {
                                                                                selctedMeasuer = listofMeasuer[i]['name'];
                                                                              });
                                                                              Navigator.of(context).pop();
                                                                            },
                                                                            child:
                                                                                Center(
                                                                              child: Text(
                                                                                listofMeasuer[i]['name'],
                                                                                style: const TextStyle(fontSize: 20),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          const Divider(),
                                                                        ],
                                                                      );
                                                                    }));
                                                          },
                                                          child: CircleAvatar(
                                                            radius: 25,
                                                            child: const Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              size: 25,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            backgroundColor:
                                                                Theme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                          selctedMeasuer != null
                                                              ? selctedMeasuer!
                                                              : 'فدان/ م'),
                                                    ],
                                                  ),
                                                  // height: 35,
                                                  // width: 120,
                                                  // child:
                                                  //   hint: 'فدان/ م',
                                                  //   icon: Icons.keyboard_arrow_down,
                                                  // ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SizedBox(
                                                  height: 35,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.4,
                                                  child:
                                                      const RegisterTextField(
                                                    hint: 'إجمالى الأسماك',
                                                  ),
                                                ),
                                                Container(
                                                  height: 35,
                                                  width: 120,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 1, left: 1),
                                                  decoration: BoxDecoration(
                                                    //color: Colors.white,
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.black38),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      Radius.circular(100),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: InkWell(
                                                          onTap: () {
                                                            CustomBottomSheet().show(
                                                                context: context,
                                                                child: ListView.builder(
                                                                    itemCount: listofTypes.length,
                                                                    itemBuilder: (context, i) {
                                                                      return Column(
                                                                        children: [
                                                                          InkWell(
                                                                            onTap:
                                                                                () {
                                                                              setState(() {
                                                                                selctedType = listofTypes[i]['name'];
                                                                              });
                                                                              Navigator.of(context).pop();
                                                                            },
                                                                            child:
                                                                                Center(
                                                                              child: Text(
                                                                                listofTypes[i]['name'],
                                                                                style: const TextStyle(fontSize: 20),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          const Divider(),
                                                                        ],
                                                                      );
                                                                    }));
                                                          },
                                                          child: CircleAvatar(
                                                            radius: 25,
                                                            child: const Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              size: 25,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            backgroundColor:
                                                                Theme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(selctedType != null
                                                          ? selctedType!
                                                          : 'النوع'),
                                                    ],
                                                  ),
                                                  // height: 35,
                                                  // width: 120,
                                                  // child: RegisterTextField(
                                                  //   hint: 'النوع',
                                                  //   icon: Icons.keyboard_arrow_down,
                                                  // ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  child: const Text(' إضافة عدد من نوع آخر ',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold)),
                                  onPressed: () {
                                    setState(() {
                                      index++;
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 35,
                                width: 205,
                                child: RegisterTextField(
                                  hint: 'وزن السمكة الابتدائى بالجرام',
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                height: 35,
                                width: 205,
                                child: RegisterTextField(
                                  hint: 'وزن السمكة المستهدف بالجرام',
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomBtn(
                          text: "حفظ",
                          color: const Color(0xffb9e1f6),
                          heigh: 50,
                          weigh: 100,
                          txtColor: Colors.black,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const ProfileScreen()));
                          },
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}
