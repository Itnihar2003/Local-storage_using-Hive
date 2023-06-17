import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:storageapp/homepage.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  var box =await Hive.openBox('mybox');
  runApp(MaterialApp(
    home: homepage(),
  ));
}
