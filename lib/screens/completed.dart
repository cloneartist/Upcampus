import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCompleted extends StatefulWidget {
  const ProjectCompleted({Key? key}) : super(key: key);

  @override
  State<ProjectCompleted> createState() => _ProjectCompletedState();
}

class _ProjectCompletedState extends State<ProjectCompleted> {
  @override
  Widget build(BuildContext context) {
    var heightx = MediaQuery.of(context).size.height;
    var widthx = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/lap.png',
                fit: BoxFit.contain,
              ),
            ),
            Text(
              "Project 1",
              style: GoogleFonts.poppins(
                  fontStyle: FontStyle.normal,
                  fontSize: 18,
                  color: Color.fromARGB(255, 97, 103, 128),
                  textStyle: TextStyle(height: 3)),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(50, 5, 100, 10),
              child: Text(
                "\nA CLI app that can quiz your friends on how well they know you.\nUse nodeJS. Use repli.it to host your app.",
                style: GoogleFonts.poppins(
                  
                  fontSize: 14,
                ),)),

                    Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 100, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "How to?",
                  style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color.fromARGB(255, 97, 103, 128)),
                      
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 250, 0),
              child: Text(
                  "•\tYoutube. \n•\tW3Schools.\n",
                  style: TextStyle(height: 1.3),
              )
            ),
              Padding(
              padding: const EdgeInsets.fromLTRB(50,2, 100, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Completed?",
                  style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color.fromARGB(255, 97, 103, 128)),
                      
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.fromLTRB(50,10, 270, 2),
              child: Text(
                "\nmail to us",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 150, 20),
              child: Text(
                "submission@upschool.in",
                style: GoogleFonts.poppins(
                  
                  fontSize: 14,
                ),)),


            Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
              child: ElevatedButton(
                child: Text(
                  "Completed",
                  style: GoogleFonts.poppins(fontStyle: FontStyle.normal),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1947E6),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
