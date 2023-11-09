import 'package:al_hadith/config/app_color.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  String asset;
  int index;
  int myIndex;
  CustomIcon(
      {super.key,
      required this.asset,
      required this.index,
      required this.myIndex});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      asset,
      height: 20,
      color: index == myIndex ? primary : Colors.black,
    );
  }
}
