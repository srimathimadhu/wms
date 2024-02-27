import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Industries_Screen extends StatefulWidget {
  const Industries_Screen({super.key});

  @override
  State<Industries_Screen> createState() => _Industries_ScreenState();
}

class _Industries_ScreenState extends State<Industries_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Industries Around...",
            style: GoogleFonts.ubuntu(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        toolbarHeight: 150,
        backgroundColor: Color.fromARGB(255, 87, 188, 156),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 87, 188, 156),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                  child: Text('Add',
                      style: GoogleFonts.ubuntu(color: Colors.white)),
                ))
          ],
        ),
      ),
    );
  }
}
