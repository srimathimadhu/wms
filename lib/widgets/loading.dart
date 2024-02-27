import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
          child: SpinKitDoubleBounce(
              color: Color.fromARGB(255, 87, 188, 156), size: 50.0)),
    );
  }
}
