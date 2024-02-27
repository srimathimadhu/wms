// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wms/screens/newpage.dart';
import 'package:wms/screens/orderScreen/construction.dart';

class Wallet_Screen extends StatefulWidget {
  const Wallet_Screen({super.key});

  @override
  State<Wallet_Screen> createState() => _Wallet_ScreenState();
}

class _Wallet_ScreenState extends State<Wallet_Screen> {
  final currentUser = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text('Wallet',
                style: GoogleFonts.ubuntu(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            backgroundColor: Color.fromARGB(255, 87, 188, 156),
            elevation: 0),
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 87, 188, 156),
              // borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.circular(15),
              //     bottomRight: Radius.circular(15))
            ),
            height: MediaQuery.of(context).size.height / 3.8,
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
              child: Column(children: [
                Text('Total Earnings',
                    style: GoogleFonts.ubuntu(
                        color: Colors.white.withOpacity(0.7))),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("Users")
                        .where("uid", isEqualTo: currentUser.currentUser?.uid)
                        .snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, i) {
                              var data = snapshot.data!.docs[i];
                              return Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, bottom: 8, top: 8, right: 8),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '₹ ',
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(data['total_earning'],
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            });
                      } else {
                        return Text('');
                      }
                    }),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width / 40),
                              child: Row(children: [
                                Icon(Iconsax.activity4),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 60),
                                Text('History',
                                    style:
                                        GoogleFonts.ubuntu(color: Colors.white))
                              ]),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width / 40),
                              child: Row(children: [
                                Icon(Iconsax.clock4),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 60),
                                Text('Pending',
                                    style:
                                        GoogleFonts.ubuntu(color: Colors.white))
                              ]),
                            ))
                      ])
                ])
              ]),
            )));
  }
}
