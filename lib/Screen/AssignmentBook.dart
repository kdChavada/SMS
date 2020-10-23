import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:our_e_school/DashBord/dashbord.dart';

class AssignmentBook extends StatefulWidget {
  @override
  _AssignmentBookState createState() => _AssignmentBookState();
}

class _AssignmentBookState extends State<AssignmentBook> {
  List<String> items = [];
  String val = "";

  List<Widget> listItems() {
    List<Widget> temp = [
      TextField(
        onChanged: (String newText) {
          val = newText;
        },
      ),
    ];
    for (int i = 0; i < items.length; i++) {
      temp.add(
        ListTile(
          title: Text(items[i]),
          subtitle: Text(
            "Complete",
            style: GoogleFonts.kavivanar(
              fontSize: 20.0,
              color: Colors.pink,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text(
          'Assignment',
          style: GoogleFonts.lemonada(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashBord()),
            );
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: listItems(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.pink,
        onPressed: () {
          setState(() {
            items.add(val);
          });
        },
        child: Text("Add"),
      ),
    );
  }
}
