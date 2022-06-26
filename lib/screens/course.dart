import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcampus/screens/guideline.dart';
import 'package:upcampus/screens/leveloneproject.dart';

class course extends StatefulWidget {
  const course({Key? key}) : super(key: key);

  @override
  State<course> createState() => _courseState();
}

class _courseState extends State<course> {
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
                child: box("Last Updated 25-06-2022", "Guidelines"),
                onTap: (() => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LeveloneProject(),
                        ),
                      ),
                    }),
              ),
              box("Last Updated 25-06-2022", "Week 1"),
              box("Last Updated 25-06-2022", "Week 2"),
              box("Last Updated 25-06-2022", "Week 3"),
              box("Last Updated 25-06-2022", "Week 4"),
              box("Last Updated 25-06-2022", "Week 5"),
              box("Last Updated 25-06-2022", "Week 6"),
              // box("Coming Soon!", "Something Exiting is brewing"),
              // box("Coming Soon!", "Something Exiting is brewing"),
              // box("Coming Soon!", "Something Exiting is brewing"),
              // box("Coming Soon!", "Something Exiting is brewing"),
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
          child: Container(
            height: heightx * 0.18,
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Color(0xFFD6FCF7)),
                  ),
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
              Flexible(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("$posted",
                      //   style: TextStyle(
                      //       fontSize: 10.0, fontWeight: FontWeight.bold),
                      // ),
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

// class AppCheckbox extends StatelessWidget {
//   final bool value;
//   final bool disabled;
//   final double size;
//   final ValueChanged<bool> onChanged;

//   const AppCheckbox({
//     Key? key,
//     this.size = 24,
//     this.value = false,
//     this.disabled = false,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final backColor = disabled ? Colors.white10 : Colors.white24;
//     final checkColor = disabled ? Colors.white54 : Colors.white;

//     return Theme(
//       data: Theme.of(context).copyWith(
//         disabledColor: Colors.transparent,
//         unselectedWidgetColor: Colors.transparent,
//       ),
//       child: SizedBox(
//         width: size,
//         height: size,
//         child: Container(
//           decoration: BoxDecoration(
//             color: backColor,
//             borderRadius: BorderRadius.circular(4),
//           ),
//           clipBehavior: Clip.hardEdge,
//           child: Transform.scale(
//             scale: size / Checkbox.width,
//             child: Checkbox(
//               hoverColor: Colors.transparent,
//               focusColor: Colors.transparent,
//               activeColor: Colors.transparent,
//               checkColor: checkColor,
//               value: value,
//               onChanged: disabled
//                   ? null
//                   : (value) {
//                       onChanged(value!);
//                     },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
