import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:our_e_school/DashBord/dashbord.dart';

class ProgressReportCard extends StatefulWidget {
  @override
  _ProgressReportCardState createState() => _ProgressReportCardState();
}

class _ProgressReportCardState extends State<ProgressReportCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text(
          'Progress Report Card',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
//          defaultColumnWidth:
//              FixedColumnWidth(MediaQuery.of(context).size.width / 3),
          border: TableBorder.all(
              color: Colors.teal, width: 1.0, style: BorderStyle.solid),
          children: [
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Text(
                'Subject',
                style: GoogleFonts.exo2(
                    color: Colors.deepOrangeAccent,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ))),
              TableCell(
                child: Center(
                    child: Text('Total Mark',
                        style: GoogleFonts.exo2(
                            color: Colors.deepOrangeAccent,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold))),
              ),
              TableCell(
                  child: Center(
                      child: Text('Getting Mark',
                          style: GoogleFonts.exo2(
                              color: Colors.deepOrangeAccent,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)))),
              TableCell(
                  child: Center(
                      child: Text('Grade',
                          style: GoogleFonts.exo2(
                              color: Colors.deepOrangeAccent,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)))),
            ]),
            TableRow(children: [
              TableCell(
                child: Center(
                    child: Text(
                  'Gujrati',
                  style: GoogleFonts.patuaOne(
                      color: Colors.deepPurpleAccent,
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic),
                )),
                verticalAlignment: TableCellVerticalAlignment.bottom,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(
                  child: Text(
                    '100',
                    style: GoogleFonts.codaCaption(
                        color: Colors.pinkAccent,
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              TableCell(
                  child: Center(
                      child: Container(
                child: Text(
                  '93',
                  style: GoogleFonts.codaCaption(
                      color: Colors.teal,
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic),
                ),
              ))),
              TableCell(
                child: Center(
                    child: Text(
                  'A',
                  style: GoogleFonts.codaCaption(
                      color: Colors.brown,
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic),
                )),
                verticalAlignment: TableCellVerticalAlignment.top,
              ),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Text(
                'Hindi',
                style: GoogleFonts.patuaOne(
                    color: Colors.deepPurpleAccent,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                child: Center(
                    child: Text(
                  '100',
                  style: GoogleFonts.codaCaption(
                      color: Colors.pinkAccent,
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic),
                )),
              ),
              TableCell(
                  child: Center(
                      child: Text(
                '87',
                style: GoogleFonts.codaCaption(
                    color: Colors.teal,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                  child: Center(
                      child: Text(
                'B',
                style: GoogleFonts.codaCaption(
                    color: Colors.brown,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Text(
                'English',
                style: GoogleFonts.patuaOne(
                    color: Colors.deepPurpleAccent,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                child: Center(
                    child: Text(
                  '100',
                  style: GoogleFonts.codaCaption(
                      color: Colors.pinkAccent,
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic),
                )),
              ),
              TableCell(
                  child: Center(
                      child: Text(
                '89',
                style: GoogleFonts.codaCaption(
                    color: Colors.teal,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                  child: Center(
                      child: Text(
                'B',
                style: GoogleFonts.codaCaption(
                    color: Colors.brown,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Text(
                'Maths',
                style: GoogleFonts.patuaOne(
                    color: Colors.deepPurpleAccent,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                child: Center(
                    child: Text(
                  '100',
                  style: GoogleFonts.codaCaption(
                      color: Colors.pinkAccent,
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic),
                )),
              ),
              TableCell(
                  child: Center(
                      child: Text(
                '96',
                style: GoogleFonts.codaCaption(
                    color: Colors.teal,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                  child: Center(
                      child: Text(
                'A',
                style: GoogleFonts.codaCaption(
                    color: Colors.brown,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Text(
                'Social-Science',
                style: GoogleFonts.patuaOne(
                    color: Colors.deepPurpleAccent,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                child: Center(
                    child: Text(
                  '100',
                  style: GoogleFonts.codaCaption(
                      color: Colors.pinkAccent,
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic),
                )),
              ),
              TableCell(
                  child: Center(
                      child: Text(
                '88',
                style: GoogleFonts.codaCaption(
                    color: Colors.teal,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                  child: Center(
                      child: Text(
                'B',
                style: GoogleFonts.codaCaption(
                    color: Colors.brown,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Text(
                'Science',
                style: GoogleFonts.patuaOne(
                    color: Colors.deepPurpleAccent,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                child: Center(
                    child: Text(
                  '100',
                  style: GoogleFonts.codaCaption(
                      color: Colors.pinkAccent,
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic),
                )),
              ),
              TableCell(
                  child: Center(
                      child: Text(
                '87',
                style: GoogleFonts.codaCaption(
                    color: Colors.teal,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                  child: Center(
                      child: Text(
                'B',
                style: GoogleFonts.codaCaption(
                    color: Colors.brown,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Text(
                'Sanskrit',
                style: GoogleFonts.patuaOne(
                    color: Colors.deepPurpleAccent,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                child: Center(
                    child: Text(
                  '100',
                  style: GoogleFonts.codaCaption(
                      color: Colors.pinkAccent,
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic),
                )),
              ),
              TableCell(
                  child: Center(
                      child: Text(
                '81',
                style: GoogleFonts.codaCaption(
                    color: Colors.teal,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
              TableCell(
                  child: Center(
                      child: Text(
                'B',
                style: GoogleFonts.codaCaption(
                    color: Colors.brown,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ))),
            ]),
          ],
        ),
      ),
    );
  }
}
