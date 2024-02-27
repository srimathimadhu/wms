import 'package:flutter/material.dart';

class No_Result extends StatefulWidget {
  const No_Result({super.key});

  @override
  State<No_Result> createState() => _No_ResultState();
}

class _No_ResultState extends State<No_Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('No Recent History')));
  }
}
