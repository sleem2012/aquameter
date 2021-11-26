import 'dart:ui';
import 'package:aquameter/src/screens/page1.dart';
import 'package:flutter/material.dart';
import 'MainWidgets/button_signin.dart';
import 'MainWidgets/register_secure_text_field.dart';
import 'package:flutter/cupertino.dart';

class SigninScreen extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  SigninScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: _form,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jfif'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/aqualogo.png',
                height: 70,
                width: 200,
                fit: BoxFit.cover,
              ),
              Text(
                "   The Best Application For Fish",
                style: TextStyle(
                    color: Colors.blue[400],
                    fontSize: 13,
                    fontStyle: FontStyle.normal),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.blue),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextFormField(
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
                      ))),
              const SizedBox(
                height: 15,
              ),
              const RegisterSecureTextField(
                icon: Icons.lock,
                label: "كلمة السر",
              ),
              const SizedBox(height: 30),
              SignInButton(
                txtColor: const Color(0xff247bb5),
                onPressSignIn: () async {
                  final isValid = _form.currentState!.validate();
                  if (!isValid) {
                    return;
                  }
                  _form.currentState!.save();
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => const  Page1()),
                    (Route<dynamic> route) => false,
                  );
                },
                btnWidth: 150.0,
                btnHeight: 45,
                btnColor: const Color(0xffE5DDD5),
                bRadius: BorderRadius.circular(50.0),
                btnShadow: const [
                  BoxShadow(
                      color: Colors.black26, spreadRadius: 1, blurRadius: 5)
                ],
                buttonText: 'تسجيل الدخول',
                textSize: 20,
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
