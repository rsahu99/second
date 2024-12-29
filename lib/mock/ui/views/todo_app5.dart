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

class TodoApp5View extends StatelessWidget {
  final int _index;
  
  TodoApp5View({super.key, Object? extra}) : _index = (extra ?? 0) as int;


  @override
  Widget build(BuildContext context) {
    final view = context.watch<TodoApp5Controller>();
    return ChangeNotifierProvider(
      create: (context) => TodoApp5Controller(),
      child: Scaffold(
      backgroundColor: Color(0xffffffff),
      body: ListViewbuilder_1((index) => view._validate),
    ),
    );
  }
}

class TodoApp5Controller with ChangeNotifier {
  static TodoApp5Controller? _instance;

  factory TodoApp5Controller() => _instance ??= TodoApp5Controller._internal();

  TodoApp5Controller._internal() {
    // initialization logic here
  }
  
  void _validate() { print('_validate'); notifyListeners(); }
}