import 'package:flutter/material.dart';
import 'Screen_1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) => MaterialApp(home: FirstScreen() ); 
}