import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';
import 'package:our_e_school/Screen/About.dart';
import 'package:our_e_school/Screen/AssignmentBook.dart';
import 'package:our_e_school/Screen/Attandance.dart';

import 'package:our_e_school/Screen/Gallery.dart';
import 'package:our_e_school/Screen/MonthsFees.dart';
import 'package:our_e_school/Screen/Progress_card.dart';
import 'package:our_e_school/Screen/Report_Card.dart';
import 'package:our_e_school/Screen/profile.dart';
import 'package:our_e_school/login/login_screen.dart';
import 'package:our_e_school/main.dart';

class DashBord extends StatefulWidget {
  @override
  _DashBordState createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text(
          "Our E School",
          style: GoogleFonts.patrickHand(),
        ),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: Text('kd chavada'),
              accountEmail: Text("kdchavada1999@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 12.0,
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),

            //menu

            InkWell(
              borderRadius: BorderRadius.circular(30.0),
              hoverColor: Colors.deepPurple,
              splashColor: Colors.pink,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: ListTile(
                title: Text(
                  "Profile",
                  style:
                      GoogleFonts.lobster(color: Colors.black, fontSize: 25.0),
                ),
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              borderRadius: BorderRadius.circular(30.0),
              hoverColor: Colors.deepPurple,
              splashColor: Colors.pink,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarPage2()),
                );
              },
              child: ListTile(
                title: Text(
                  "Attendance",
                  style:
                      GoogleFonts.lobster(color: Colors.black, fontSize: 25.0),
                ),
                leading: Icon(
                  Icons.attribution_outlined,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(30.0),
              hoverColor: Colors.deepPurple,
              splashColor: Colors.pink,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportCard()),
                );
              },
              child: ListTile(
                title: Text(
                  "Progress",
                  style:
                      GoogleFonts.lobster(color: Colors.black, fontSize: 25.0),
                ),
                leading: Icon(
                  Icons.report_gmailerrorred_outlined,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(30.0),
              hoverColor: Colors.deepPurple,
              splashColor: Colors.pink,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProgressReportCard()),
                );
              },
              child: ListTile(
                title: Text(
                  "Progress Card",
                  style:
                      GoogleFonts.lobster(color: Colors.black, fontSize: 25.0),
                ),
                leading: Icon(
                  Icons.report,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              borderRadius: BorderRadius.circular(30.0),
              hoverColor: Colors.deepPurple,
              splashColor: Colors.pink,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AssignmentBook()),
                );
              },
              child: ListTile(
                title: Text(
                  "Assignment",
                  style:
                      GoogleFonts.lobster(color: Colors.black, fontSize: 25.0),
                ),
                leading: Icon(
                  Icons.book,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              borderRadius: BorderRadius.circular(30.0),
              hoverColor: Colors.deepPurple,
              splashColor: Colors.pink,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MonthsFees()),
                );
              },
              child: ListTile(
                title: Text(
                  "Fess",
                  style:
                      GoogleFonts.lobster(color: Colors.black, fontSize: 25.0),
                ),
                leading: Icon(
                  Icons.food_bank_outlined,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              borderRadius: BorderRadius.circular(30.0),
              hoverColor: Colors.deepPurple,
              splashColor: Colors.pink,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gallery()),
                );
              },
              child: ListTile(
                title: Text(
                  "Gallery",
                  style:
                      GoogleFonts.lobster(color: Colors.black, fontSize: 25.0),
                ),
                leading: Icon(
                  Icons.image,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              borderRadius: BorderRadius.circular(30.0),
              hoverColor: Colors.deepPurple,
              splashColor: Colors.pink,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: ListTile(
                title: Text(
                  "Login",
                  style:
                      GoogleFonts.lobster(color: Colors.black, fontSize: 25.0),
                ),
                leading: Icon(
                  Icons.login,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),
            InkWell(
              borderRadius: BorderRadius.circular(30.0),
              hoverColor: Colors.deepPurple,
              splashColor: Colors.pink,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
              child: ListTile(
                title: Text(
                  "About",
                  style:
                      GoogleFonts.lobster(color: Colors.black, fontSize: 25.0),
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Marquee(
          text: 'Student Life Is Golden Life ',
          style: GoogleFonts.rye(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.deepPurpleAccent),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 100.0,
          velocity: 100.0,
          pauseAfterRound: Duration(seconds: 1),
          showFadingOnlyWhenScrolling: true,
          fadingEdgeEndFraction: 0.1,
          fadingEdgeStartFraction: 0.1,
          numberOfRounds: 10,
          accelerationCurve: Curves.linear,
          decelerationDuration: Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        ),
      ),
    );
  }
}
