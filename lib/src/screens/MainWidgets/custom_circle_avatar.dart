
import 'package:aquameter/src/provider/departments.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomCircleAvatar extends StatefulWidget {
  final String? text;
  final Function? func;
  const CustomCircleAvatar({Key? key, this.text, this.func}) : super(key: key);

  @override
  _CustomCircleAvatarState createState() => _CustomCircleAvatarState();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar> {
  late DepartMentProvider departMentProvider;

  @override
  Widget build(BuildContext context) {
    departMentProvider = Provider.of(context, listen: false);
    return InkWell(
      onTap: widget.func as void Function()?,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 15,
          backgroundColor:
              departMentProvider.selected ? Colors.red : Colors.grey[400],
          child: Text(
            widget.text!,
            style: const  TextStyle(
              color: Colors.black45,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}
