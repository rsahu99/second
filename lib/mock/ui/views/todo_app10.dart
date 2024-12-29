import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
//import 'package:collection/collection.dart';
import 'dart:math';

import '../../app.dart';
import '../../common/constants.dart';
import '../../common/utils.dart';
import '../../data/_dao.dart';
import '../../data/models/_models.dart';
import '../components/_components.dart';

class TodoApp10View extends StatelessWidget {
  final int _index;
  
  TodoApp10View({super.key, Object? extra}) : _index = (extra ?? 0) as int;


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoApp10Controller(),
      child: Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar_4(Constants.settings),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(16),
        shrinkWrap: false,
        physics: ScrollPhysics(),
        children: [Padding_1(() => context.push('/todoapp5'), 'https://i.ibb.co/GV44RGq/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt-2736.jpg', Constants.avatar),Divider_2()],
      ),
    ),
    );
  }
}

class TodoApp10Controller with ChangeNotifier {
  static TodoApp10Controller? _instance;

  factory TodoApp10Controller() => _instance ??= TodoApp10Controller._internal();

  TodoApp10Controller._internal() {
    // initialization logic here
  }
  
  void _next() { print('_next'); notifyListeners(); }
}