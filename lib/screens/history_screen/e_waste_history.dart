// ignore_for_file: prefer_const_constructors, camel_case_types, sized_box_for_whitespace, unused_local_variable, avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class E_waste_History extends StatefulWidget {
  const E_waste_History({super.key});

  @override
  State<E_waste_History> createState() => _E_waste_HistoryState();
}

class _E_waste_HistoryState extends State<E_waste_History> {
  //delete project
  final CollectionReference _posts =
      FirebaseFirestore.instance.collection('Posts');

  Future<void> _delete(String project) async {
    await _posts.doc(project).delete().whenComplete(() {
      Navigator.pop(context);
    });

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
        'Successfully Deleted',
      ),
    ));
  }

  final currentUser = FirebaseAuth.instance;

  String? selectedmaterial = 'E-Waste';
  //year sort

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        elevation: 0,
        title: Text("E-Waste History"),
        backgroundColor: Color.fromARGB(255, 87, 188, 156),
        centerTitle: true,
      ),
      body: Column(children: [
        DefaultTabController(
          length: 1,
          initialIndex: 0,
          child: Column(
            children: <Widget>[
              Container(
                child: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dragStartBehavior: DragStartBehavior.down,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(text: 'Result'),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height /
                    1.4, //height of TabBarView

                child: TabBarView(children: <Widget>[
                  StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection("Posts")
                          .where("Material", isEqualTo: "E-Waste")
                          .where("uid", isEqualTo: currentUser.currentUser!.uid)
                          .snapshots(),
                      builder:
                          (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, i) {
                                var data = snapshot.data!.docs[i];
                                Timestamp t = data['Register_On'] as Timestamp;

                                return Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            backgroundColor: Colors.transparent,
                                            builder: (BuildContext bc) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Container(
                                                  height: 500.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Expanded(
                                                              flex: 2,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        10.0),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: <
                                                                      Widget>[
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          data[
                                                                              'Material'],
                                                                          style: TextStyle(
                                                                              color: Colors.black,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 16.0),
                                                                        ),
                                                                        Spacer(),
                                                                        IconButton(
                                                                            onPressed:
                                                                                () {
                                                                              _delete((data.id));
                                                                            },
                                                                            icon:
                                                                                Icon(Icons.delete))
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                            10),
                                                                    Text(
                                                                      data[
                                                                          'Weight'],
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              14.0),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(height: 20.0),
                                                        Text(
                                                          "Content",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18.0),
                                                        ),
                                                        SizedBox(height: 5.0),
                                                        Text(
                                                          data['Content'],
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14.0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 95.0,
                                            width: 350.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 2,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Row(
                                                            children: <Widget>[
                                                              Text(
                                                                data[
                                                                    'Material'],
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16.0),
                                                              ),
                                                              Spacer(),
                                                              Text(
                                                                data['Register_On']
                                                                    .toDate()
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .grey,
                                                                    fontSize:
                                                                        12.0),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(height: 5),
                                                          Text(
                                                            data['Weight'],
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14.0),
                                                          ),
                                                          SizedBox(height: 5),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10.0),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              });
                        } else {
                          return Center(child: Text('No Result Found'));
                        }
                      }),
                ]),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
