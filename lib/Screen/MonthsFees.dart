import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:our_e_school/DashBord/dashbord.dart';

class MonthsFees extends StatefulWidget {
  @override
  _MonthsFeesState createState() => _MonthsFeesState();
}

class _MonthsFeesState extends State<MonthsFees> {
  Map<String, bool> values = {
    'January - 31 days': true,
    'February - 28 days in a common year and 29 days in leap years': false,
    'March - 31 days': false,
    'April - 30 days': false,
    'May - 31 days': false,
    'June - 30 days': false,
    'July - 31 days': false,
    'August - 31 days': false,
    'September - 30 days': false,
    'October - 31 days': false,
    'November - 30 days': false,
    'December - 31 days': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text(
          'AcceptedFees',
          style: GoogleFonts.oleoScript(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashBord()),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: new ListView(
        children: values.keys.map((String key) {
          return new CheckboxListTile(
            title: new Text(
              key,
              style: GoogleFonts.exo2(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            value: values[key],
            onChanged: (bool value) {
              setState(() {
                values[key] = value;
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
