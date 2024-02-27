// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wms/screens/history_screen/construction_history.dart';
import 'package:wms/screens/history_screen/e_waste_history.dart';
import 'package:wms/screens/history_screen/medical_history.dart';
import 'package:wms/screens/history_screen/metal_history.dart';
import 'package:wms/screens/history_screen/other_history.dart';
import 'package:wms/screens/history_screen/plastic_history.dart';
import 'package:wms/screens/orderScreen/construction.dart';
import 'package:wms/screens/orderScreen/e_wasteoder.dart';
import 'package:wms/screens/orderScreen/medical.dart';
import 'package:wms/screens/orderScreen/metal.dart';
import 'package:wms/screens/orderScreen/others.dart';
import 'package:wms/screens/orderScreen/plastic.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade100,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 87, 188, 156),
          title: Text('WMS',
              style: GoogleFonts.ubuntu(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          height: MediaQuery.of(context).size.height * 0.30,
                          child: Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Construction',
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.network(
                                              "https://cdn1.iconfinder.com/data/icons/landscaping-and-horticulture/287/landscaping-002-512.png"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Text('Waste',
                                      style: GoogleFonts.ubuntu(
                                          color: Colors.black)),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Column(children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ConstructionOrder_Screen()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 236, 110, 101),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  )),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.add,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('Add',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Construction_History()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 236, 110, 101),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.activity4,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('History',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                        ])
                                  ]),
                                ]),
                          )),
                      SizedBox(height: MediaQuery.of(context).size.height / 50),
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          height: MediaQuery.of(context).size.height * 0.30,
                          child: Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Electrical',
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.network(
                                              "https://img.favpng.com/11/14/5/electronic-waste-computer-recycling-recycling-symbol-png-favpng-xXq8DywVAuuCt29fZDkNHmMYc.jpg"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Text('Waste',
                                      style: GoogleFonts.ubuntu(
                                          color: Colors.black)),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Column(children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            E_WasteOrder_Screen()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 236, 110, 101),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.add,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('Add',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            E_waste_History()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 236, 110, 101),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.activity4,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('History',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                        ])
                                  ]),
                                ]),
                          )),
                      SizedBox(height: MediaQuery.of(context).size.height / 50),
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          height: MediaQuery.of(context).size.height * 0.30,
                          child: Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Metal',
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.network(
                                              "https://cdn4.iconfinder.com/data/icons/waste-sorting/66/17-512.png"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Text('Waste',
                                      style: GoogleFonts.ubuntu(
                                          color: Colors.black)),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Column(children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            MetalOrder_Screen()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 236, 110, 101),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.add,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('Add',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Metal_History()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 236, 110, 101),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.activity4,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('History',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                        ])
                                  ]),
                                ]),
                          )),
                      SizedBox(height: MediaQuery.of(context).size.height / 50),
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          height: MediaQuery.of(context).size.height * 0.30,
                          child: Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Plastic',
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.network(
                                              "https://cdn4.iconfinder.com/data/icons/jumpicon-pollution-line/32/-_Bottle-Floating-Plastic-Water-Waste-Sea-512.png"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Text('Waste',
                                      style: GoogleFonts.ubuntu(
                                          color: Colors.black)),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Column(children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            PlasticOrder_Screen()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 236, 110, 101),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.add,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('Add',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Plastic_History()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 236, 110, 101),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.activity4,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('History',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                        ])
                                  ]),
                                ]),
                          )),
                      SizedBox(height: MediaQuery.of(context).size.height / 50),
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          height: MediaQuery.of(context).size.height * 0.30,
                          child: Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Medical',
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.network(
                                              "https://th.bing.com/th/id/OIP.D_wapIBdKP4uPfSe9tt7PAHaHa?pid=ImgDet&rs=1"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Text('Waste',
                                      style: GoogleFonts.ubuntu(
                                          color: Colors.black)),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Column(children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            MedicalOrder_Screen()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 236, 110, 101),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.add,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('Add',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Medical_History()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 236, 110, 101),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.activity4,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('History',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                        ])
                                  ]),
                                ]),
                          )),
                      SizedBox(height: MediaQuery.of(context).size.height / 50),
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          height: MediaQuery.of(context).size.height * 0.30,
                          child: Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Other',
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.network(
                                              "https://d30y9cdsu7xlg0.cloudfront.net/png/116061-200.png"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Text('Waste',
                                      style: GoogleFonts.ubuntu(
                                          color: Colors.black)),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  Column(children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Others_OrderScreen()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 236, 110, 101),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.add,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('Add',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Other_History()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 236, 110, 101),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        40),
                                                child: Row(children: [
                                                  Icon(Iconsax.activity4,
                                                      color: Colors.white),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              60),
                                                  Text('History',
                                                      style: GoogleFonts.ubuntu(
                                                          color: Colors.white))
                                                ]),
                                              )),
                                        ])
                                  ]),
                                ]),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
