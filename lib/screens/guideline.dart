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
            Text(
              "Level One Guidelines,",
              style: GoogleFonts.poppins(
                  fontStyle: FontStyle.normal,
                  fontSize: 18,
                  color: Color.fromARGB(255, 97, 103, 128),
                  textStyle: TextStyle(height: 3)),
            ),
             Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 80, 8),
              child: Text(
                "\nTo qualify yourself as level one.\nYou could be -",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 200, 10),
              child: Text(
                  "•\tNewcomer\n•\tBeginner\n•\tIntermediate\n•\tAdvanced\n•\tor Literally be anybody",
                  style: TextStyle(height: 1.3),
              )
            ),
           
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 5, 100, 10),
              child: Text(
                "\nBackground doen't matter, you have to prove your worth to be a part of the tribe",
                style: GoogleFonts.poppins(
                  
                  fontSize: 14,
                ),)),
                   Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 100, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Perks",
                  style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color.fromARGB(255, 97, 103, 128)),
                ),
              ),
            ),

                Padding(
              padding: const EdgeInsets.fromLTRB(60, 5, 100, 5),
              child: Text(
                  "•\tGet an oppertunity to be inntroduced to our exclusive community of tinkerers,developers and people who love to code\n•\tGet a peak to our exclusice Jobs dashboard for new developers.\n\n",
                  style: TextStyle(height: 1.3),
              )
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
