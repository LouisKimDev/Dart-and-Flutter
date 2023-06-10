import 'package:flutter/material.dart';
import 'db_home.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'dart:io' as IO;

Future main() async {
  if (IO.Platform.isWindows || IO.Platform.isLinux) {
    // Initialize FFI
    sqfliteFfiInit();

    databaseFactory = databaseFactoryFfi;
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'DB APP', home: StudentPage());
  }
}
