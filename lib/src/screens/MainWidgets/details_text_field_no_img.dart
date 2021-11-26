import 'package:flutter/material.dart';

class DetailsTextFieldNoImg extends StatefulWidget {
  final String? label;
  final String? hint;
  final Function? onChange;
  final String? init;
  final String? errorText;

  const DetailsTextFieldNoImg(
      {Key? key, this.label, this.hint, this.onChange, this.errorText, this.init})
      : super(key: key);

  @override
  _DetailsTextFieldNoImgState createState() => _DetailsTextFieldNoImgState();
}

class _DetailsTextFieldNoImgState extends State<DetailsTextFieldNoImg> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            minLines: 4,
            onChanged: widget.onChange as void Function(String)?,
            maxLines: 4,
            validator: (value) {
              if (value!.isEmpty) {
                return "${widget.hint ?? widget.label} مطلوب";
              }
              return null;
            },
            initialValue: widget.init,
            textAlign: TextAlign.right,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: widget.hint,
              errorText: widget.errorText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: widget.label,
              contentPadding: const  EdgeInsets.only(top: 20, right: 10),
              border:  const  OutlineInputBorder(
                borderRadius:  BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ));
  }
}
