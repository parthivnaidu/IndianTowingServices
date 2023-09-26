import 'package:flutter/material.dart';
import 'package:indiantowing/reponsive/desktopbody.dart';
import 'package:indiantowing/reponsive/mobilebody.dart';
import 'package:indiantowing/reponsive/responsive_layout.dart';
import 'package:indiantowing/reponsive/tabbody.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      responsivelayout(mobilebody: mobile(), desktopbody: desktop(), tabbody: tabbody()),

    );
    
  }
}