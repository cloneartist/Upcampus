import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcampus/screens/course.dart';

class WeekThree extends StatefulWidget {
  const WeekThree({Key? key}) : super(key: key);

  @override
  State<WeekThree> createState() => _WeekThreeState();
}

class _WeekThreeState extends State<WeekThree> {
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 8, 8, 20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/new.png"),
                  ),
                ),
              ),
              // GestureDetector(
              //     onTap: (() => {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => course(),
              //             ),
              //           ),
              //         }),
              //     child: box("Last Updated 25-06-2022", "Level Zero")),
              // box("Last Updated 25-06-2022", "Level One"),
              box("28 March 2022", "Week 3:\n First Website"),
              // // box("Coming Soon!", "Something Exiting is brewing"),
              // // box("Coming Soon!", "Something Exiting is brewing"),
              // // box("Coming Soon!", "Something Exiting is brewing"),
              // // box(),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/group.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Container(
                  child: Text(
                    "“Java is to JavaScript what car is to Carpet.” ",
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Container(
                    child: Text(
                      "– Chris Hellman",
                      style: GoogleFonts.poppins(),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              )
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
          child: Container(
            height: heightx * 0.16,
            width: widthx * 0.9,
            padding: const EdgeInsets.all(16.0),
            // decoration: BoxDecoration(
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.black,
            //         spreadRadius: 0,
            //         blurRadius: 0,
            //         offset: const Offset(0, 5),
            //       )
            //     ],
            //     border: Border.all(width: 2, color: Colors.black),
            //     borderRadius: BorderRadius.all(Radius.circular(15)),
            //     color: Color(0xFFD6FCF7)),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("$title",
                    textAlign: TextAlign.left,
                    //   style: TextStyle(
                    //       fontSize: 10.0, fontWeight: FontWeight.bold),
                    // ),
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("$posted",
                    //   style: TextStyle(
                    //       fontSize: 10.0, fontWeight: FontWeight.bold),
                    // ),
                    style: GoogleFonts.poppins()),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
