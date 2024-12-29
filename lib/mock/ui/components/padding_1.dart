import 'package:flutter/material.dart';
//import 'package:collection/collection.dart';
import 'dart:math';

import '../../app.dart';
import '../../common/constants.dart';
import '../../common/utils.dart';
import '../../data/models/_models.dart';
import '../components/_components.dart';

class Padding_1 extends StatelessWidget {
  final VoidCallback p4;
  final String p3;
  final String p2;

  Padding_1(this.p4, this.p3, this.p2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    p2,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                  child: Container(
                    height: 30,
                    width: 30,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                        p3,
                        fit: BoxFit.cover),
                  ),
                ),
				IconButton(
				  icon: Icon(
					Icons.arrow_forward_ios,
					color: Color(0xff000000),
					size: 18,
				  ),
				  onPressed: p4,
				),
              ],
            ),
          );
  }
}