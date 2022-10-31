import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ui_text_animation/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  /// This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Text Kit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Routes(),
    );
  }
}
