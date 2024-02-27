// ignore_for_file: camel_case_types, prefer_const_constructors, unnecessary_new, non_constant_identifier_names, prefer_is_empty

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wms/widgets/loading.dart';

class ConstructionOrder_Screen extends StatefulWidget {
  const ConstructionOrder_Screen({super.key});

  @override
  State<ConstructionOrder_Screen> createState() =>
      _ConstructionOrder_ScreenState();
}

class _ConstructionOrder_ScreenState extends State<ConstructionOrder_Screen> {
  final _formkey = GlobalKey<FormState>();
  CollectionReference ref = FirebaseFirestore.instance.collection('Posts');
  List<String> weight = ['0-5', '5-10', '10-20', '20-above'];
  String? selectedweight = '0-5';
  bool loading = false;
  String material = 'Construction';
  final currentUser = FirebaseAuth.instance;

  //fill
  final TextEditingController address_1 = new TextEditingController();
  final TextEditingController address_2 = new TextEditingController();
  final TextEditingController city_town = new TextEditingController();
  final TextEditingController state = new TextEditingController();
  final TextEditingController pin_code = new TextEditingController();
  final TextEditingController content = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Construction'),
        backgroundColor: Color.fromARGB(255, 87, 188, 156),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Weight: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10),
                Container(
                  color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Kilogram(kg): "),
                      DropdownButton<String>(
                        value: selectedweight,
                        items: weight
                            .map((item) => DropdownMenuItem<String>(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (item) =>
                            setState(() => selectedweight = item),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Address: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10),
                TextFormField(
                    controller: address_1,
                    validator: (value) {
                      if (value!.length == 0) {
                        return "Address line 1 cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      address_1.text = value!;
                    },
                    decoration: InputDecoration(
                        label: Text('Address line 1'),
                        border: OutlineInputBorder())),
                SizedBox(height: 10),
                TextFormField(
                    controller: address_2,
                    validator: (value) {
                      if (value!.length == 0) {
                        return "Address line 2 cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      address_2.text = value!;
                    },
                    decoration: InputDecoration(
                        label: Text('Address line 2'),
                        border: OutlineInputBorder())),
                SizedBox(height: 10),
                TextFormField(
                    controller: city_town,
                    validator: (value) {
                      if (value!.length == 0) {
                        return "City/Town cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      city_town.text = value!;
                    },
                    decoration: InputDecoration(
                        label: Text('City/Town'),
                        border: OutlineInputBorder())),
                SizedBox(height: 10),
                TextFormField(
                    controller: state,
                    validator: (value) {
                      if (value!.length == 0) {
                        return "State cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      state.text = value!;
                    },
                    decoration: InputDecoration(
                        label: Text('State'), border: OutlineInputBorder())),
                SizedBox(height: 10),
                TextFormField(
                    controller: pin_code,
                    validator: (value) {
                      if (value!.length == 0) {
                        return "Pin Code cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      pin_code.text = value!;
                    },
                    decoration: InputDecoration(
                        label: Text('Pin Code'), border: OutlineInputBorder())),
                SizedBox(height: 10),
                TextFormField(
                    controller: content,
                    validator: (value) {
                      if (value!.length == 0) {
                        return "Content cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      content.text = value!;
                    },
                    maxLines: 5,
                    decoration: InputDecoration(
                        label: Text('Content'), border: OutlineInputBorder())),
                SizedBox(height: 10),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          setState(() => loading = true);
                          ref.add({
                            'Address_1': address_1.text,
                            'Address_2': address_2.text,
                            'City': address_2.text,
                            'Pin_Code': address_2.text,
                            'State': address_2.text,
                            'Content': address_2.text,
                            'uid': currentUser.currentUser!.uid,
                            'Weight': selectedweight.toString(),
                            'Register_On': FieldValue.serverTimestamp(),
                            'Material': material.toString()
                          }).whenComplete(() {
                            showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                title: const Text("Registred"),
                                content: const Text("You Waste Registred"),
                                actions: <Widget>[
                                  MaterialButton(
                                    color: Colors.black,
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Done",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                        } else {
                          CircularProgressIndicator();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 87, 188, 156)),
                      child: Text('Publish')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
