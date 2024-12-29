import 'package:flutter/material.dart';
//import 'package:collection/collection.dart';
import 'dart:math';

import '../../app.dart';
import '../../common/constants.dart';
import '../../common/utils.dart';
import '../../data/models/_models.dart';
import '../components/_components.dart';

class Divider_2 extends StatelessWidget {

  Divider_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
            color: Color(0x4d9e9e9e),
            height: 16,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          );
  }
}