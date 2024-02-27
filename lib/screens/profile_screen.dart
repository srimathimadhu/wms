// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_field, unused_local_variable, unnecessary_null_comparison

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wms/controller/login_page.dart';

import '../widgets/loading.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  final currentUser = FirebaseAuth.instance;

  int _currentValue = 0;

  //logout
  Future<LoginPage> _signOut() async {
    await FirebaseAuth.instance.signOut();
    return new LoginPage();
  }
  //delete project

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50]!.withOpacity(0.5),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150.0,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 87, 188, 156),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                )),
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 70.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Account",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      FloatingActionButton.small(
                        backgroundColor: Colors.white,
                        onPressed: () {
                          _signOut();
                        },
                        child: Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
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
                                  left: 40, bottom: 8, top: 8, right: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Name: ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['name'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Email: ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['email'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
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
            ],
          )
        ]),
      ),
    );
  }
}
