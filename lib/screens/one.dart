import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcampus/screens/two.dart';

class one extends StatefulWidget {
  const one({Key? key}) : super(key: key);

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    var heightx = MediaQuery.of(context).size.height;
    var widthx = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 20),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/new.png"),
                  ),
                ),
              ),
              GestureDetector(
                child: box("Last Updated 25-06-2022", "Coding"),
                onTap: (() => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => two(),
                        ),
                      ),
                    }),
              ),
              box("Coming Soon!", "Something Exiting is brewing"),
              box("Coming Soon!", "Something Exiting is brewing"),

              // box()
            ],
          ),
        ),
      ),
    );
  }
}

class box extends StatelessWidget {
  // const box({Key? key}) : super(key: key);
  const box(this.posted, this.title);
  final String posted;
  final String title;

  @override
  Widget build(BuildContext context) {
    var heightx = MediaQuery.of(context).size.height;
    var widthx = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Flexible(
            child: Container(
              height: heightx * 0.2,
              width: widthx * 0.9,
              padding: const EdgeInsets.all(16.0),
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
              child: Column(children: [
                Flexible(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("$posted",
                        //   style: TextStyle(
                        //       fontSize: 10.0, fontWeight: FontWeight.bold),
                        // ),
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("$title",
                        textAlign: TextAlign.left,
                        //   style: TextStyle(
                        //       fontSize: 10.0, fontWeight: FontWeight.bold),
                        // ),
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
