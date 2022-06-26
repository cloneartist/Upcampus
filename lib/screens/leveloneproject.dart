import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeveloneProject extends StatefulWidget {
  const LeveloneProject({Key? key}) : super(key: key);

  @override
  State<LeveloneProject> createState() => _LeveloneProjectState();
}

class _LeveloneProjectState extends State<LeveloneProject> {
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
                'assets/images/peole.png',
                fit: BoxFit.contain,
              ),
            ),
            Text(
              "data,",
              style: GoogleFonts.poppins(),
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
                    // backgroundColor: ,
                    // minimumSize: MaterialStateProperty.all<Size?>(
                    //     Size(double.infinity, 50)),
                    // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    //   RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(18.0),

                    //     // side: BorderSide(color: Colors.red),
                    //   ),
                    // ),
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
