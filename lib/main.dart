import 'package:flutter/material.dart';
import 'package:mydictionary/dictionary.dart';
import 'package:mydictionary/dictionary_layout.dart';
import 'package:mydictionary/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // initialRoute: '/dictionary',
      routes: {
        '/dictionary': (context) => Dictionary(),
        '/dictionary_layout':(context) => MyDict(),
      },
    ),
  );
}
