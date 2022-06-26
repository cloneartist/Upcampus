import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcampus/screens/login.dart';
import 'package:url_launcher/url_launcher.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var heightx = MediaQuery.of(context).size.height;
    var widthx = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Container(
              //     child: Text(
              //   "Blogs",
              //   style: TextStyle(),
              // )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                    child: Text(
                      'Blogs',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 15, 20, 8),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () async {
                          _signOut();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                          setState(() {});
                        },
                        child: const Text(
                          "Logout",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ],
              ),

              GestureDetector(
                onTap: () async {
                  String url = ("https://www.sitepoint.com/why-learn-to-code/");
                  var urllaunchable = await canLaunchUrl(
                      Uri.parse(url)); //canLaunch is from url_launcher package

                  await launchUrl(Uri.parse(
                      url)); //launch is from url_launcher package to launch URL
                },
                child: Container(
                  height: heightx * 0.56,
                  width: widthx * 0.9,
                  child: Image.asset(
                    'assets/images/box.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: heightx * 0.56,
                  width: widthx * 0.9,
                  child: Image.asset(
                    'assets/images/Blog.png',
                    fit: BoxFit.contain,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
