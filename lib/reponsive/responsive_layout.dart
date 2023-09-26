import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class responsivelayout extends StatelessWidget {
  final Widget mobilebody;
  final Widget desktopbody;
  final Widget tabbody;

  responsivelayout(
      {required this.mobilebody,
      required this.desktopbody,
      required this.tabbody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth < 500) {
        return mobilebody;
      } else if (Constraints.maxWidth > 500 && Constraints.maxWidth < 970) {
        return tabbody;
      } else {
        return desktopbody;
      }
    });
  }
}
