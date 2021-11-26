import 'package:flutter/material.dart';

class LocationTextField extends StatefulWidget {
  final Function? onChange;

  const LocationTextField({Key? key, this.onChange}) : super(key: key);

  @override
  _LocationTextFieldState createState() => _LocationTextFieldState();
}

class _LocationTextFieldState extends State<LocationTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Directionality(
          textDirection:  TextDirection.rtl,
            
          child: TextField(
            minLines: 2,
            onChanged: widget.onChange as void Function(String)?,
            maxLines: 2,
            textAlign:  TextAlign.right,
             
            keyboardType: TextInputType.text,
            decoration: const  InputDecoration(
              labelText: 'تفاصيل العنوان (إختياري)',
              hintText: 'اسم البرج السكني، رقم الدور، رقم الشقة',
              contentPadding:   EdgeInsets.only(top: 20, right: 10, left: 10),
              border:  OutlineInputBorder(
                borderRadius:  BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ));
  }
}
