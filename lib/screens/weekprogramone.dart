import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcampus/screens/course.dart';

class Weekone extends StatefulWidget {
  const Weekone({Key? key}) : super(key: key);

  @override
  State<Weekone> createState() => _WeekoneState();
}

class _WeekoneState extends State<Weekone> {
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
              box("28 March 2022", "Week 1:\n First Program"),
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
                    "“Any fool can write code that a computer can understand. Good programmers write code that humans can understand.” ",
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
                      "– Martin Fowler",
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
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("$title",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("$posted", style: GoogleFonts.poppins()),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
