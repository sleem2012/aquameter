// import 'package:aquafish/src/provider/location.dart';

// import 'package:aquafish/src/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'MainWidgets/custom_btn.dart';
import 'MainWidgets/profile_appbar.dart';
import 'MainWidgets/register_text_field.dart';
// import 'package:provider/provider.dart';

// import 'MainWidgets/custtomBottomSheet.dart';
// import 'getLocation.dart';

class AddMlwha extends StatefulWidget {
  const AddMlwha({Key? key}) : super(key: key);

  @override
  _AddMlwhaState createState() => _AddMlwhaState();
}

class _AddMlwhaState extends State<AddMlwha> {
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
                            height: 50,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "   The Best Application For Fish",
                            style: TextStyle(
                                color: Colors.blue[400],
                                fontSize: 13,
                                fontStyle: FontStyle.normal),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.9,
                            margin: const EdgeInsets.all(40),
                            child: Column(
                              children: <Widget>[
                             const     SizedBox(height: 30),
                                CustomBtn(
                                  text: "معدلات التحويل",
                                  color: Colors.blue[400],
                                  heigh: 30,
                                  weigh: 150,
                                  txtColor: Colors.white,
                                  onTap: () {},
                                ),
                             const     SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width *
                                          0.38,
                                      child: RegisterTextField(
                                        hint: 'معدل ph',
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width *
                                          0.38,
                                      child: const  RegisterTextField(
                                        hint: 'درجة حرارة المياه',
                                      ),
                                    ),
                                  ],
                                ),
                             const     SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width *
                                          0.38,
                                      child: const  RegisterTextField(
                                        hint: 'اكسجين',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width *
                                          0.38,
                                      child:   const RegisterTextField(
                                        hint: 'الملوحه',
                                      ),
                                    ),
                                  ],
                                ),
                              const    SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width *
                                          0.38,
                                      child: const  RegisterTextField(
                                        hint: 'امونيات كلية',
                                      ),
                                    ),
                                  ],
                                ),
                               const   SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 35,
                                  width:
                                      MediaQuery.of(context).size.width * 0.38,
                                  decoration: const  BoxDecoration(color: Colors.blue),
                                  child: const  Text(
                                    ' = امونيات السامه',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                             const     SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width *
                                          0.38,
                                      child: const  RegisterTextField(
                                        hint: 'اعداد السمك',
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 35,
                                      width: MediaQuery.of(context).size.width *
                                          0.38,
                                      child: const  RegisterTextField(
                                        hint: 'الوزن الكلي ',
                                      ),
                                    ),
                                  ],
                                ),
                             const     SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width:
                                      MediaQuery.of(context).size.width * 0.38,
                                  decoration: const  BoxDecoration(color: Colors.blue),
                                  child: const  Text(
                                    ' = متوسط الوزن',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              const    SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width:
                                      MediaQuery.of(context).size.width * 0.38,
                                  decoration: const  BoxDecoration(color: Colors.blue),
                                  child: const  Text(
                                    ' = اجمالي الوزن',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              const    SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 35,
                                  width:
                                      MediaQuery.of(context).size.width * 0.38,
                                  child: const  RegisterTextField(
                                    hint: 'اجمالي العلف',
                                  ),
                                ),
                               const   SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width:
                                      MediaQuery.of(context).size.width * 0.38,
                                  decoration: const  BoxDecoration(color: Colors.blue),
                                  child: const  Text(
                                    ' = معدل التحويل',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
              )
            ]),
          ),
        ],
      ),
    ));
  }
}
