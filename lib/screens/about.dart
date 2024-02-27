// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class About_Screen extends StatefulWidget {
  const About_Screen({super.key});

  @override
  State<About_Screen> createState() => _About_ScreenState();
}

class _About_ScreenState extends State<About_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Center(child: Text('Climax - Wee Twice')),
    );
  }
}
