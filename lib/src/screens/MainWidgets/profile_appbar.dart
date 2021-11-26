import 'package:flutter/material.dart';

import 'default_appbar.dart';

class ProfileAppBar extends StatelessWidget {
  final String? title;
  final String? name;
  final String? location;
  final bool? hasBack;
  final Function? onBack;
  final Widget? image;
  final Widget? icon;

  const ProfileAppBar(
      {Key? key,
      this.title,
      this.name,
      this.location,
      this.hasBack,
      this.onBack,
      this.image,
      this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xffb9e1f6),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(150),
            bottomLeft: Radius.circular(100),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          defaultAppBar(

            context: context,
            title: title ?? "",
            elevation: 0.0,
            hasBack: hasBack ?? false,
            onPress: onBack ?? () {},
          ),
          const SizedBox(height: 90),

          // Name
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              name ?? "",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          // Location
          location != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    location!,
                    style: const  TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                )
              : const  SizedBox(),
          const  SizedBox(height: 5),
          Container(
            height: 6,
            width: 20,
            decoration: const  BoxDecoration(
               color: Color(0xffb9e1f6),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
