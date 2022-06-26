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
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 5, 100, 10),
              child: Text(
                "\nA CLI app that can quiz your friends on how well they know you.\nUse nodeJS. Use repli.it to host your app.",
                style: GoogleFonts.poppins(
                  
                  fontSize: 14,
                ),)),



            Text(
              "data,",
              style: GoogleFonts.poppins(),
            ),
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
