import 'package:flutter/material.dart';

class RegisterSecureTextField extends StatefulWidget {
  final String? label;
  final IconData? icon;

  final String? errorText;
  final Function? onChange;
  final Function? error;

  const RegisterSecureTextField(
      {Key? key, this.label, this.errorText, this.onChange, this.icon, this.error})
      : super(key: key);

  @override
  _RegisterSecureTextFieldState createState() =>
      _RegisterSecureTextFieldState();
}

class _RegisterSecureTextFieldState extends State<RegisterSecureTextField> {
  bool see = true;

  @override
  Widget build(BuildContext context) {
    
    return Container(
       decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
      margin: const EdgeInsets.only(left:40 , right:40 ),
      
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          
          textAlign: TextAlign.right,
          onChanged: widget.onChange as void Function(String)?,
          obscureText: see,
           validator: (value) {
              if (value!.isEmpty) {
                return "${widget.label} مطلوب";
              }
              return null;
            },
          decoration: InputDecoration(
            
            labelText: widget.label,
            errorText: widget.errorText,
         
            suffixIcon: Padding(
                padding: const  EdgeInsets.all(10),
                child: Container(
                    decoration: const  BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black12 ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          see = !see;
                        });
                      },
                      child: Icon(see == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ))),
            contentPadding: const  EdgeInsets.only(top: 10, right: 10),
            border: (InputBorder.none),
          ),
        ),
      ),
    );
     
  }
}
