
import 'package:flutter/material.dart';

import 'back_btn.dart';


Widget defaultAppBar({
  required BuildContext context,
  required String title,
  Function? onPress,
  bool hasBack = false,
  double? elevation,
  Widget? icon,
  List<Widget>? actions,
}) {
  return AppBar(
    elevation: elevation ?? 4,
    title: Text(
      title,
      style:  const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    centerTitle: true,
    actions: actions ?? [],
    leading: hasBack
        ? BackBtn(
            color: Colors.white,
            onPress: onPress,
          )
        : icon ??  const SizedBox(),
    backgroundColor: const  Color(0xffb9e1f6),
    shape: const  RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
      ),
    ),
  );
}