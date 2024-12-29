import 'package:flutter/material.dart';
//import 'package:collection/collection.dart';
import 'dart:math';

import '../../app.dart';
import '../../common/constants.dart';
import '../../common/utils.dart';
import '../../data/models/_models.dart';
import '../components/_components.dart';

class AppBar_4 extends BaseAppBar {
  final String p8;

  AppBar_4(this.p8, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff3a57e8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          p8,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xffffffff),
          size: 22,
        ),
      );
  }
}