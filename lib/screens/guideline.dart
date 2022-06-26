import 'package:flutter/material.dart';

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
                'assets/images/people.png',
                fit: BoxFit.contain,
              ),
            ),
            
            
          ]),
        ),
      ),
    );
  }
}
