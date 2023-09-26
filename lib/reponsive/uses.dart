  import 'package:flutter/material.dart';
  import 'dart:developer';
  import 'dart:async';
    bool showTextField = false;

Widget phoneTextInput() {
    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: "Numero",
        border: InputBorder.none,
      ),
    );
  }