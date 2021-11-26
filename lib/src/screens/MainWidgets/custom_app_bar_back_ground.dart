import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// ignore: must_be_immutable
class CustomAppBarBackGround extends StatefulWidget {
  final List<Widget>? widgets ;
  double? height ;

  CustomAppBarBackGround({Key? key, this.widgets, this.height}) : super(key: key);

  @override
  _CustomAppBarBackGroundState createState() => _CustomAppBarBackGroundState();
}

class _CustomAppBarBackGroundState extends State<CustomAppBarBackGround> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    if(widget.height!= null){
      setState(() {
        widget.height = MediaQuery.of(context).size.height*.2 ;
      });
    }
    return  ClipPath(
      clipper:  OvalBottomBorderClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: widget.height ?? MediaQuery.of(context).size.height*.14  ,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor
              ]),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.widgets!,
        ),
      ),
    );
  }
}
