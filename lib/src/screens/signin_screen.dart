import 'dart:ui';
import 'package:aquameter/src/Helper/mediaQuery.dart';
import 'package:aquameter/src/screens/hom_page.dart';
import 'package:aquameter/src/screens/page1.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'MainWidgets/button_signin.dart';
import 'MainWidgets/register_secure_text_field.dart';
import 'package:flutter/cupertino.dart';
import '';

class SigninScreen extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  SigninScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _form,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/aqualogo.png',
                height: context.height * .4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      children: [
                        TextFormField(
                          textAlign: TextAlign.right,
                          validator: (v) {
                            if (v!.isEmpty) {
                              return 'يجب عليك ادخال رقم الهاتف';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "رقم الموبايل",
                            contentPadding: EdgeInsets.only(right: 10),
                            border: (InputBorder.none),
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          color: Colors.grey.shade900,
                        )
                      ],
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              const RegisterSecureTextField(
                icon: Icons.lock,
                label: "كلمة السر",
              ),
              const SizedBox(height: 30),
              SignInButton(
                txtColor: Colors.white70,
                onPressSignIn: () async {
                  final isValid = _form.currentState!.validate();
                  if (!isValid) {
                    return;
                  }
                  _form.currentState!.save();
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => const HomePageUi()),
                    (Route<dynamic> route) => false,
                  );
                },
                btnWidth: 170.0,
                btnHeight: 45,
                btnColor: HexColor("#0e6bad"),
                bRadius: BorderRadius.circular(50.0),
                buttonText: 'تسجيل الدخول',
                textSize: 17,
              ),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  child: const Text(' نسيت كلمة السر ؟ ',
                      style: TextStyle(color: Colors.black45, fontSize: 15.0)),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (_) => ForgetPassword()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
