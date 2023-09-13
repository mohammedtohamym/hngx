import 'dart:io';

import 'package:flutter/material.dart';
import 'package:push_and_pop_with_data/Text.dart';
import 'Screen_1.dart';
import 'Text.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) => MaterialApp(home: FirstScreen() ); 
}