import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Guideline extends StatefulWidget {
  const Guideline({Key? key}) : super(key: key);

  @override
  State<Guideline> createState() => _GuidelineState();
}

class _GuidelineState extends State<Guideline> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/peole.png',
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
              child: ElevatedButton(
                child: Text(
                  "Start Learning",
                  style: GoogleFonts.poppins(fontStyle: FontStyle.normal),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1947E6),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
