
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../profile_screen.dart';
import 'custom_new_dialog.dart';

// ignore: must_be_immutable
class CustomSlider extends StatefulWidget {
  int num;
  String? name;
  String? address;

  CustomSlider(this.num, this.name, this.address, {Key? key}) : super(key: key);
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  final CustomDialog _dialog = CustomDialog();
  @override
  Widget build(BuildContext context) {
    return Slidable(
  key: const ValueKey(0),

  // The start action pane is the one at the left or the top side.
  startActionPane: ActionPane(
    // A motion is a widget used to control how the pane animates.
    motion: const ScrollMotion(),

    // A pane can dismiss the Slidable.
    dismissible: DismissiblePane(onDismissed: () {}),
          children: [
        InkWell(
          onTap: () async {
            return await _dialog.showOptionDialog(
                context: context,
                msg: 'هل ترغب بحذف العميل؟',
                okFun: () {},
                okMsg: 'نعم',
                cancelMsg: 'لا',
                cancelFun: () {
                  return;
                });
          },
          child: const  Material(
            shape: CircleBorder(),
            color: Colors.redAccent,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Icon(Icons.delete, color: Colors.white),
            ),
          ),
        ),
      ],
      
     
    ), child:  InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const  ProfileScreen()));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: const  Color(0xfff0f0f0),
              border: Border.all(
                width: 1,
                color: Colors.blue[900]!,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.name!,
                      style: const  TextStyle(
                        color: Color(0xff282759),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(widget.address!),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: const  Color(0xFF8D8E98),
                              activeTrackColor: const  Color(0xff282759),
                              thumbColor: const  Color(0xff282759),
                              overlayColor: const  Color(0xff282759),
                              thumbShape:
                                 const   RoundSliderThumbShape(enabledThumbRadius: 5),
                              overlayShape:
                                 const   RoundSliderOverlayShape(overlayRadius: 7),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Slider(
                                value: widget.num.toDouble(),
                                min: 0,
                                max: 100,
                                onChanged: (double newValue) {
                                  setState(() {
                                    widget.num = newValue.round();
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Text(
                          widget.num.toString(),
                        ),
                      const    Text(
                          '%',
                        ),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 31,
                  backgroundColor: Colors.blue[900],
                  child: CircleAvatar(
                    backgroundColor: const  Color(0xfff0f0f0),
                    child: Image.asset('assets/images/fish1.png'),
                    radius: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),);
  }
}