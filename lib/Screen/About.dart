import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text(
          "About",
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[_buildInfo1(), _buildInfo2(), _buildInfo3()],
        ),
      ),
    );
  }

  Widget _buildInfo1() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.redAccent,
                        child: Image(
                          image: AssetImage('assets/images/student.png'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Our E School',
                            style: GoogleFonts.graduate(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "Version",
                      style: GoogleFonts.patrickHand(
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                      "1.0",
                      style: GoogleFonts.patrickHand(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.cached,
                      color: Colors.redAccent,
                    ),
                    title: Text(
                      "Changelog",
                      style: GoogleFonts.patrickHand(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                      leading: Icon(
                        Icons.offline_pin,
                        color: Colors.green,
                      ),
                      title: Text(
                        "License",
                        style: GoogleFonts.patrickHand(
                          fontSize: 20.0,
                        ),
                      )),
                ],
              )),
        ));
  }

  Widget _buildInfo2() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Author',
                    style: GoogleFonts.patrickHand(
                      fontSize: 20.0,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.purpleAccent,
                    ),
                    title: Text(
                      "Kd chavada",
                      style: GoogleFonts.patrickHand(
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                      "Rajkot",
                      style: GoogleFonts.patrickHand(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.file_download,
                      color: Colors.deepOrangeAccent,
                    ),
                    title: Text(
                      "Download From Cloud",
                      style: GoogleFonts.patrickHand(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }

  Widget _buildInfo3() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Company',
                    style: GoogleFonts.patrickHand(
                      fontSize: 20.0,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Colors.black,
                    ),
                    title: Text(
                      "9 Brainz",
                      style: GoogleFonts.patrickHand(
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                      " Flutter Mobile App Specialist",
                      style: GoogleFonts.patrickHand(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    title: Text(
                      "Rajkot , Gujrat",
                      style: GoogleFonts.patrickHand(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
