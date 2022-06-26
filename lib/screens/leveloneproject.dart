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
              "Level Zero Guidelines,",
              
              style: GoogleFonts.poppins(fontStyle: FontStyle.normal,fontSize:18, color: Color.fromARGB(255, 97, 103, 128),textStyle: TextStyle(height: 3)),
              

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\nThis level is for an absolute beginner.\nIf you do this level, you Will -",
                  style:GoogleFonts.poppins(
                    fontWeight:FontWeight.bold,
                    fontSize: 16,
                    
                  ) ,
                  
                ),
              ),
              
                   Padding(
                     padding: const EdgeInsets.fromLTRB(5,5,100,5),
                     child: Text("•\tWrite your first program\n•\tHost your first site\n•\tMake your own portfolio + blog\n•\tWrite a vanillaJS app\n•\tWrite your first react app"),
                   ), 

           Padding(
             padding: const EdgeInsets.fromLTRB(50,20,100,10),
             child: Align(alignment:Alignment.centerLeft,
               child: Text(
                  "Getting Help",
                  
                  style: GoogleFonts.poppins(fontStyle: FontStyle.normal,fontSize:16, color: Color.fromARGB(255, 97, 103, 128)),
                  
             
                  ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.fromLTRB(60,5,100,5),
             child: Text(
              "If you have anywhere during level Zero,\ntry Google, Stackoverflow, try W3Schoold\nOnly at the last resort \n\nmail to us : contact@upcampus.in",
              style: TextStyle(height: 1.2),
             ),
           ),
             Padding(
             padding: const EdgeInsets.fromLTRB(50,20,100,10),
             child: Align(alignment:Alignment.centerLeft,
               child: Text(
                  "But what if I know all this?",
                  
                  style: GoogleFonts.poppins(fontStyle: FontStyle.normal,fontSize:16, color: Color.fromARGB(255, 97, 103, 128)),
                  
             
                  ),
             ),
           ),
         
             Padding(
               padding: const EdgeInsets.fromLTRB(60,5,100,5),
               child: Text(
                "Then don't do it. However, If you want to go to next level i.e Level One of the app",
                style: TextStyle(height: 1.2),
                textAlign: TextAlign.left,
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
            )
          ]),
        ),
      ),
    );
  }
}
