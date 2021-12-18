import 'package:flutter/cupertino.dart';
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => const ProfileScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffCDE8EE),
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
          ),
          child: ExpansionTile(
            title: Row(
              children: [
                Text(
                  widget.name!,
                  style: const TextStyle(
                    color: Color(0xff282759),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.address!),
                      Row(

                        children: [
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: const Color(0xFF8D8E98),
                              activeTrackColor: const Color(0xff282759),
                              thumbColor: const Color(0xff282759),
                              overlayColor: const Color(0xff282759),
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 5),
                              overlayShape: const RoundSliderOverlayShape(
                                  overlayRadius: 7),
                            ),
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
                          Text(
                            widget.num.toString(),
                          ),
                          const Text(
                            '%',
                          ),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: Image.asset(
                      'assets/images/logo2.png',
                      fit: BoxFit.cover,
                    ),
                    backgroundColor: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
