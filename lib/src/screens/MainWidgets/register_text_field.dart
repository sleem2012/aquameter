import 'package:flutter/material.dart';

class RegisterTextField extends StatefulWidget {
  final String? label;
  final IconData? icon;
  final TextInputType? type;
  final String? hint;
  final String? errorText;
  final Function? onChange;
  final Function? error;
  final String? init;
final Color? color;

  const RegisterTextField(
      {Key? key,
      FormFieldValidator<String>? validator,
      this.icon,
      this.label,
      this.type,
      this.hint,
      this.color,
      this.errorText,
      this.onChange,
      this.error, this.init})
      : super(key: key);

  @override
  _RegisterTextFieldState createState() => _RegisterTextFieldState();
}

class _RegisterTextFieldState extends State<RegisterTextField> {
  @override
  Widget build(BuildContext context) {
    
    return Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            color: widget.color,
            child: TextFormField(

              initialValue: widget.init,
             maxLines: null,
              textAlign: TextAlign.right,
            
              keyboardType:widget.hint ==  'رقم الجوال'? TextInputType.number : widget.type,
              onChanged: widget.onChange as void Function(String)?,
              validator: (value) {
                if (value!.isEmpty) {
                  return "${widget.hint ?? widget.label } مطلوب";
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: widget.icon != null
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 1,
                          child: Icon(
                            widget.icon,
                            size: 15,
                            color: Colors.white,
                          ),
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                      )
                    : null,
                labelText: widget.label,
                // errorText: widget.errorText ?? null,
                hintText: widget.hint ?? '',
                contentPadding: const  EdgeInsets.only(top: 10, right: 10),
                border:  const  OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          ),
        ));
  }
}
