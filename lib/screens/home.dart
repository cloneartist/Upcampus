import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    var heightx = MediaQuery.of(context).size.height;
    var widthx = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Container(
              //     child: Text(
              //   "Blogs",
              //   style: TextStyle(),
              // )),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                    child: Text(
                      'Blogs',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),

              Container(
                child: Image.asset(
                  'assets/images/box.png',
                  
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Image.asset(
                  'assets/images/Blog.png',
                  
                )
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}

Widget tabbar() {
  return Container(
    color: Color(0xFF3F5AA6),
    child: TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white70,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.blue,
      tabs: [
        Tab(
          text: "Transactions",
          icon: Icon(Icons.euro_symbol),
        ),
        Tab(
          text: "Bills",
          icon: Icon(Icons.assignment),
        ),
        Tab(
          text: "Balance",
          icon: Icon(Icons.account_balance_wallet),
        ),
        Tab(
          text: "Options",
          icon: Icon(Icons.settings),
        ),
      ],
    ),
  );
}
