import 'package:collection/collection.dart';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart' show rootBundle;

//import '../data/api/_api.dart';
import '../data/models/_models.dart';
import '../data/_dao.dart';

List<Sample> samplesListModelFromJson(String str) =>
    List<Sample>.from(json.decode(str).map((x) => Sample.fromJson(x)));

String samplesListModelToJson(List<Sample> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
    
  Future<Object> fillWithMockData() async {
    await Future<void>.delayed(const Duration(seconds: 3));
	var jsonString = await rootBundle.loadString('assets/data.json');
	var items = samplesListModelFromJson(jsonString);

	var dao = SampleDao();
	await dao.deleteAll();	
    for (var item in items) {
        await dao.insert(item);
    }
	return true;
  }