import 'package:google_fonts/google_fonts.dart';
import 'package:upcampus/screens/course.dart';
import 'package:upcampus/screens/home.dart';
import 'package:upcampus/screens/project.dart';
import 'package:upcampus/screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:upcampus/models/textstyle.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Tokenp extends StatefulWidget {
  const Tokenp({Key? key}) : super(key: key);

  @override
  _TokenpState createState() => _TokenpState();
}

class _TokenpState extends State<Tokenp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool loading = false;

  late String email, password;

  @override
  Widget build(BuildContext context) {
    var heightx = MediaQuery.of(context).size.height;
    var widthx = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Container(
              height: heightx * 0.6,
              width: widthx * 0.8,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: const Offset(0, 5),
                    )
                  ],
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xFFD6FCF7)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Redeem Here!",
                        style: GoogleFonts.poppins(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (val) => val!.isEmpty ||
                                  !(val.contains('@') ||
                                      !(val.contains('.com')))
                              ? 'Enter a valid token'
                              : null,
                          decoration: textInputDecoration.copyWith(
                            labelText: 'Enter Your Token',
                          ),
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Text(
                          "To unlock this you must complete Level Zero,\nHappy Learning!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        ),
                        icon: const Icon(
                          Icons.key,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: (() => {
                              if (formKey.currentState!.validate())
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => coursetwo(),
                                    ),
                                  ),
                                }
                            }),
                        label: const Text(
                          "Unlock",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Spacer(
                        flex: 1,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
