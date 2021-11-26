import 'package:flutter/material.dart';

class CustomBottomSheet {
  show({required BuildContext context, Widget? child}) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        elevation: 2,
        shape: const  RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (_) {
          return child!;
        });
  }
}
